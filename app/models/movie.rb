class Movie < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :lists, through: :groups

  validates :title, :release_date, :director, :overview, :poster_url, presence: true
end
# Models are well defined and make sense.  Nice work using validations and dependent destroy
