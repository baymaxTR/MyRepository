class Coach < ApplicationRecord
		has_many :soccers

		validates :last_name, presence: true,length: { minimum: 5 },uniqueness: {case_sensitive: false}
end
