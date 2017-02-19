require "csv"
require "kramdown"

class ImportShowcases

  def self.import
    csv_options = { :headers => true, :quote_char => '"', :col_sep => ',', :header_converters => :symbol, :encoding => 'UTF-8' }
    
    ActiveRecord::Base.transaction do
      puts 'Importing: Showcases'

      showcases = Hash[Showcase.all.map {|showcase| [showcase.name, showcase] }]

      ['gandysoft'].each do |showcase_name|
        CSV.foreach("db/import/showcases.csv", csv_options.dup) do |row|
          showcase_name = row[:showcase]
          page_name = row[:page]
          filename = row[:file]

          next if showcase_name.blank? || page_name.blank? || filename.blank?

          puts " -- Processing: #{showcase_name}: #{page_name}"

          showcase = showcases[showcase_name]

          if !showcase
            showcase = Showcase.new
            showcase.name = showcase_name
            showcase.save!
            showcases[showcase_name] = showcase
          end

          description = File.read("db/import/#{filename}")

          page = Page.find_or_initialize_by({ name: page_name, showcase: showcase }).tap do |item|
            item.description = Kramdown::Document.new(description, auto_ids: false).to_html
          end
          page.save!
        end
      end
    end
  end

end
