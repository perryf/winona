class AddUniqueIndexToGroups < ActiveRecord::Migration[5.1]
  def change
    add_index :groups, [:list_id, :movie_id], unique: true
  end
end
# Does this work?  It makes the group schema look kind of strange because you have three indexes.  Could you achieve the same effect by changing `t.references :list, foreign_key: true, null: false` to include unique as well?
