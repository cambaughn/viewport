class AddLikeesCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :likees_count, :integer
  end
end
