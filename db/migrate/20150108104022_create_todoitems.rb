class CreateTodoitems < ActiveRecord::Migration
  def change
    create_table :todoitems do |t|
      t.string :title
      t.text :description
      t.integer :todo_id
      t.timestamps null: false
    end
  end
end