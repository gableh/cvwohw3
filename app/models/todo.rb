class Todo < ActiveRecord::Base
	has_many :todoitems, dependent: :destroy
end
