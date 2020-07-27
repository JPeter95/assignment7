class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.datetime :due_date
      t.string :task_title
      t.string :description
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
