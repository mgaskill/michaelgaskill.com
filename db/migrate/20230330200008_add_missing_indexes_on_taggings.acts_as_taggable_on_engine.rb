# frozen_string_literal: true

# This migration comes from acts_as_taggable_on_engine (originally 6)
class AddMissingIndexesOnTaggings < ActiveRecord::Migration[6.0]
  def change
    [
      :tag_id,
      :taggable_id,
      :taggable_type,
      :tagger_id,
      :context,
      [:tagger_id, :tagger_type]
    ].each do |columns|
      add_index table_name, columns unless index_exists?(table_name, columns)
    end

    columns = [:taggable_id, :taggable_type, :tagger_id, :context]
    add_index table_name, columns, name: 'taggings_idy' unless index_exists?(table_name, columns, name: 'taggings_idy')
  end

  def table_name
    ActsAsTaggableOn.taggings_table
  end
end
