class AddLikersCountToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :likers_count, :integer, :null ==> false, :default ==> 0
  end
end
