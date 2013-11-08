class Movie < ActiveRecord::Base
	belongs_to :genre 
	has_many :posts
	validates :title, :genre_id, presence: true
	
	def must_have_valid_trailer
		unless trailer.include?("<iframe")
			errors.add(:trailer, "Must include an iframe tag")
		end
	end
	
end
