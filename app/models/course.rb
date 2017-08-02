class Course < ApplicationRecord
  has_many :locations, dependent: :destroy
  mount_uploader :image, ImageUploader
end
