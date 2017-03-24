class TodoList

 # it "stores the list items given on initialization" do
 #    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
 #  end

  	def initialize(chores)
  		@chores = chores
  	end

	def get_items
		p @chores
	end

	def add_item(chore)
		@chores << chore
	end

	def delete_item(chore)
		@chores.delete(chore)
	end

	def get_item(integer)
		@chores[integer]
	end

end