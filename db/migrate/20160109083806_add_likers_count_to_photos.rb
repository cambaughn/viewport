class AddLikersCountToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :likers_count, :integer
  end
end
