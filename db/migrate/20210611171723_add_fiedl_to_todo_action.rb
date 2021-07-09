class AddFiedlToTodoAction < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_actions, :todo_list_id, :integer
  end
end
