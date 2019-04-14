class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password, null: false
      t.string :name, null: false
      t.string :phone

      t.timestamps
    end
  end
end
