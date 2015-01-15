class TodoCategory < ActiveRecord::Base
	belongs_to :todoitem
end
