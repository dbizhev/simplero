class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.integer :access, null: false
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.index :name, unique: true
      t.index :access

      t.timestamps
    end
  end
end
