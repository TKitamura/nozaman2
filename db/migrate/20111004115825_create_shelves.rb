class CreateShelves < ActiveRecord::Migration
  def self.up
    create_table :shelves do |t|
      t.string :name
      t.string :description
      t.integer :user_id

      t.timestamps
    end

    add_index :shelves,[:user_id]

  end

  def self.down
    drop_table :shelves
  end
end
