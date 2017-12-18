class Group < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :list_id, :uniqueness => { :scope => :movie_id, :message => "already contains this movie."}
end
# Nice job on the validation here!
