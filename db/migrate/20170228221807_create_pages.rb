class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :name, limit: 40, null: false
      t.string :slug, limit: 40, null: false
      t.integer :showcase_id, null: false
      t.text :description, null: false

      t.timestamps
    end

    add_index :pages, [:showcase_id, :name], unique: true
    add_index :pages, [:showcase_id, :slug], unique: true
  end
end
