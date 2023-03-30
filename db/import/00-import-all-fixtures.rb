# frozen_string_literal: true

load 'db/import/01-import-showcases.rb'

class ImportAllFixtures
  def self.import
    ImportShowcases.import
  end
end
