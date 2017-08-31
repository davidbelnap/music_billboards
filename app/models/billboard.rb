class Billboard < ApplicationRecord
	has_many :artists
	validates_presence_of :name
end
