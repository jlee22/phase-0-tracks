class TodoList
	attr_accessor :todolist

	def initialize(array)
		@todolist = array
	end

	def get_items
		@todolist
	end

	def add_item(item)
		@todolist << item
	end

	def delete_item(item)
		@todolist.delete(item)
	end

	def get_item(index)
		@todolist[index]
	end


end