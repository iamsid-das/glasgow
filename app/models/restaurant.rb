class Restaurant < ApplicationRecord
     mount_uploader :photo, PhotoUploader
     belongs_to :account
     # has_many :restaurant_photos
     # has_many :restaurants, through: :restaurant_photos
     scope :latest, -> { order created_at: :desc}
end
