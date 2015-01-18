class TodoitemsController < ApplicationController
	before_action :set_todo
	def index
		if params[:tag]
			@todoitems = Todoitem.tagged_with(params[:tag])
		else
			@todoitems = Todoitem.all
		end
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
	def edit
		@todoitem = @todo.todoitems.find(params[:id])

	end
	def update
		@todoitem = @todo.todoitems.find(params[:id])
		if(@todoitem.update(todo_item_params))
			redirect_to action: "index"
		end
	end	
	def destroy
    	@todoitem = @todo.todoitems.find(params[:id])
    	@todoitem.destroy
    	redirect_to action: "index"

	end
	private
	
	def set_todo
		
		@todo = Todo.find(params[:todo_id])
	end

	def todo_item_params
		params.require(:todoitem).permit(:title,:description,:tag_list)
	end

end
