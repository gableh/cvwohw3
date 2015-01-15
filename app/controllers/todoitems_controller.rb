class TodoitemsController < ApplicationController
	before_action :set_todo
	def index
		@todoitems = Todoitem.all

	end
	def create
	
		@todoitem = @todo.todoitems.new(todo_item_params)

		if @todoitem.save
			redirect_to action: "index"
        end
	end
	def new
    	@todoitem = @todo.todoitems.new
  	end
	def show
	end
	private

	def set_todo
		
		@todo = Todo.find(params[:todo_id])
	end

	def todo_item_params
		params.require(:todoitem).permit(:title,:description)
	end

end
