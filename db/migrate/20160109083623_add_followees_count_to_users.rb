class AddFolloweesCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :followees_count, :integer
  end
end
