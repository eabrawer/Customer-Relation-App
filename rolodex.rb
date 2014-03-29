class Rolodex
	@contacts = []
	@id = 1000

	def self.add_contact(name, email)
		@id += 1
		contact = Contact.new(@id, name, email)
		@contacts << contact
		@contacts[@contacts.length - 1]
	end

	def self.remove_contact(id)
		@contacts.delete_if do |contact|
			contact.id == id
		end
	end

end