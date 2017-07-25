class Soccer < ApplicationRecord
	belongs_to :coach
	belongs_to :pitch
	belongs_to :sponsor
end
