class CreateCartTools < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_tools do |t|
      t.integer :cart_id
      t.integer :user_tools_id

      t.timestamps
    end
  end
end
