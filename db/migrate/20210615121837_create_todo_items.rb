class CreateTodoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_items do |t|
      t.string :content
      t.integer :todo_list_id

      t.timestamps
    end
  end
end
