class List < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :movies, through: :groups
  
  belongs_to :user

  validates :name, presence: true, uniqueness: true
end
