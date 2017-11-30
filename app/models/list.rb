class List < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :movies, through: :groups

  belongs_to :user

  validates :name, presence: true, uniqueness: true, length: {maximum: 50, message: "must be less than 50 characters."}
end
