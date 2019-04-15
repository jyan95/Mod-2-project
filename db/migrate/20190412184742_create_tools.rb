class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.integer :user_tool_id
      t.string :name, null: false
      t.integer :category_id

      t.timestamps
    end
  end
end
