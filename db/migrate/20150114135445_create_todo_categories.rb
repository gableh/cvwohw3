class CreateTodoCategories < ActiveRecord::Migration
  def change
    create_table :todo_categories do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
