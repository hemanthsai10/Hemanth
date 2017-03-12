class Student < ApplicationRecord
	before_save :downcase_fields
	def downcase_fields
  		self.name.downcase! if self.name.present?
	end
end