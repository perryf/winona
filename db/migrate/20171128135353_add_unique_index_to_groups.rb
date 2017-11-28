class AddUniqueIndexToGroups < ActiveRecord::Migration[5.1]
  def change
    add_index :groups, [:list_id, :movie_id], unique: true
  end
end
