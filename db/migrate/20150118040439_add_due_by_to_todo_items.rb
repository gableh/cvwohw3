class AddDueByToTodoItems < ActiveRecord::Migration
  def change
  	  	add_column :todoitems, :due_by, :datetime
  end
end
