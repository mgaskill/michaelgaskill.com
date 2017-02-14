# paths
app_path = "/home/rails/michaelgaskill.com"
shared = "#{app_path}/shared"
root = "#{app_path}/current"

# paths config
pid         "#{shared}/tmp/pids/unicorn.pid"
listen      "unix:#{shared}/tmp/sockets/unicorn.sock", :backlog => 1024
stderr_path "#{shared}/log/unicorn.log"
stdout_path "#{shared}/log/unicorn.log"

preload_app       true
working_directory root
worker_processes  3
timeout           30

# use correct Gemfile on restarts
before_fork do |server, worker|
  ENV['BUNDLE_GEMFILE'] = "#{app_path}/current/Gemfile"
end

before_fork do |server, worker|
  # the following is highly recomended for Rails + "preload_app true"
  # as there's no need for the master process to hold a connection
  ActiveRecord::Base.connection.disconnect! if defined?(ActiveRecord::Base)

  ##
  # When sent a USR2, Unicorn will suffix its pidfile with .oldbin and
  # immediately start loading up a new version of itself (loaded with a new
  # version of our app). When this new Unicorn is completely loaded
  # it will begin spawning workers. The first worker spawned will check to
  # see if an .oldbin pidfile exists. If so, this means we've just booted up
  # a new Unicorn and need to tell the old one that it can now die. To do so
  # we send it a QUIT.
  #
  # Before forking, kill the master process that belongs to the .oldbin PID.
  # This enables 0 downtime deploys.
  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end
end

after_fork do |server, worker|
  ##
  # Unicorn master loads the app then forks off workers - because of the way
  # Unix forking works, we need to make sure we aren't using any of the parent's
  # sockets, e.g. db connection

  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
    ActiveRecord::Base.clear_active_connections!
  end

  # Redis and Memcached would go here but their connections are established
  # on demand, so the master never opens a socket

  ##
  # Unicorn master is started as root, and now change process ownership for the
  # workers to rails:rails
  begin
    uid, gid = Process.euid, Process.egid
    user, group = 'rails', 'rails'
    target_uid = Etc.getpwnam(user).uid
    target_gid = Etc.getgrnam(group).gid
    if uid != target_uid || gid != target_gid
      Process.initgroups(user, target_gid)
      Process::GID.change_privilege(target_gid)
      Process::UID.change_privilege(target_uid)
    end
  rescue => ex
    if rails_env == 'development'
      STDERR.puts "couldn't change user, oh well"
    else
      raise ex
    end
  end
end
