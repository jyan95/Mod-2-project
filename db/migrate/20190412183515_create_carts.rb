class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.float :total
      t.boolean :complete

      t.timestamps
    end
  end
end
