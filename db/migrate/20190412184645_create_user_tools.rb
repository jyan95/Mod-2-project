class CreateUserTools < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tools do |t|
      t.integer :user_id
      t.integer :tool_id
      t.float :cost
      t.boolean :available, default: false
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
