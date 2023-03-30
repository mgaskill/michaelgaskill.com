# frozen_string_literal: true

require "csv"
require "kramdown"

class ImportShowcases
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize

  def self.import
    csv_options = { headers: true, quote_char: '"', col_sep: ",", header_converters: :symbol, encoding: "UTF-8" }

    ActiveRecord::Base.transaction do
      puts "Importing: Showcases" # rubocop:disable Rails/Output

      showcases = Showcase.all.index_by(&:name)

      ["gandysoft"].each do |showcase_name|
        CSV.foreach("db/import/showcases.csv", csv_options.dup) do |row|
          showcase_name = row[:showcase]
          page_name = row[:page]
          filename = row[:file]

          next if showcase_name.blank? || page_name.blank? || filename.blank?

          puts " -- Processing: #{showcase_name}: #{page_name}" # rubocop:disable Rails/Output

          showcase = showcases[showcase_name]

          unless showcase
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

  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/AbcSize
end
