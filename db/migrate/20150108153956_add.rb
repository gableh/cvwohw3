class Add < ActiveRecord::Migration
  def change
  	add_column :todoitems, :todo_id, :integer
  end
end
