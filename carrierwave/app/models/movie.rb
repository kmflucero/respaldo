class Movie < ApplicationRecord
	mount_uploader :photo, ImageUploader
end
