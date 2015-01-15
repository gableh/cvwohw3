class AddCatIdtoTodoitems < ActiveRecord::Migration
  def change
  	add_column :todoitems, :cat_id, :integer
  end
end
