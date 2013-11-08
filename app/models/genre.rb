class Genre < ActiveRecord::Base
	has_many :movies
	validates :name, presence: true #validates that name can't be null
end
