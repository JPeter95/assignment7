class CreateTagsTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :tags_todo_items do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :todo_item, null: false, foreign_key: true
    end
  end
end
