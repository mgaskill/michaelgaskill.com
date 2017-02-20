load 'db/import/00-import-all-fixtures.rb'

namespace :db do
  namespace :fixture do
    desc "TODO"
    task import: :environment do
      puts "Importing Database Fixtures..."
      ImportAllFixtures.import
    end
  end
end
