class Todoitem < ActiveRecord::Base
	belongs_to :todo
	has_many :todo_categorys
	acts_as_taggable
	acts_as_taggable_on :tags
	scope :is_completed, ->(is_completed){where is_completed: is_completed}
end
