class Course < ApplicationRecord
  has_many :locations, dependent: :destroy
  has_many :pictures, dependent: :destroy

  belongs_to :user

end
