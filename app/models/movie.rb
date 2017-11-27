class Movie < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :lists, through: :groups

  validates :title, :release_date, :director, :overview, :poster_url, presence: true

  accepts_nested_attributes_for :lists

  def lists_attributes=(list_attributes)
    list_attributes.values.each do |list_attribute|
      list = List.find_or_create_by(list_attribute)
      self.lists << list
    end
  end
end
