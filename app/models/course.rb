class Course < ApplicationRecord
  has_many :locations, dependent: :destroy
  has_many :pictures, dependent: :destroy

  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

end
