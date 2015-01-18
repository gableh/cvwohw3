class AddisCompletedtotodoitems < ActiveRecord::Migration
  def up
    add_column :todoitems, :is_completed, :boolean, default: false
  end

  def down
    remove_column :todoitems, :is_completed
  end
end