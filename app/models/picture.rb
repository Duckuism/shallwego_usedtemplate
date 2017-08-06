class Picture < ApplicationRecord
  belongs_to :course
  mount_uploader :image, ImageUploader
end
