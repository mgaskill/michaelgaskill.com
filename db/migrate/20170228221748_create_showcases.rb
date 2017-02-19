class CreateShowcases < ActiveRecord::Migration[5.0]
  def change
    create_table :showcases do |t|
      t.string :name, limit: 40, null: false
      t.string :slug, limit: 40, null: false

      t.timestamps
    end

    add_index :showcases, :name, unique: true
    add_index :showcases, :slug, unique: true
  end
end
