class Movie < ApplicationRecord
	has_and_belongs_to_many :tags #porque es una relacion n a n 
end
