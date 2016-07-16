class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end
    add_index :settings, :name, unique: true
  end
end
