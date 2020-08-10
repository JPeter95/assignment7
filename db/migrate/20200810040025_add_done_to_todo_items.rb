class AddDoneToTodoItems < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_items, :done, :boolean, default: false
  end
end
