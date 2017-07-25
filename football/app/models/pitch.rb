class Pitch < ApplicationRecord
	has_many :soccers

	validates :name, presence: true,length: { minimum: 2 },uniqueness: {case_sensitive: false}
end
