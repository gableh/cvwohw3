class Todoitem < ActiveRecord::Base
	belongs_to :todo
	has_many :todo_categorys
end
