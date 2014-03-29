class Contact
	attr_accessor :name, :email
	attr_reader :id

	def initialize(id, name, email)
		@id = id
		@name = name
		@email= email
	end
end