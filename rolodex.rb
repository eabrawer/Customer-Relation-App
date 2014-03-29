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

	def self.find_contact(id)
		return nil if @contacts.empty?

		@contacts.each do |contact|
			if contact.id == id
				return contact
			else
				return nil
			end
		end
	end

	def self.modify_contact(id, name, email)
		@contacts.each do |contact|
			if contact.id == id
				contact.name = name
				contact.email = email
			end
		end
	end
end