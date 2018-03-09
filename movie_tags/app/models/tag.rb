class Tag < ApplicationRecord
		has_and_belongs_to_many :movies #porque es una relacion n a n 

end
