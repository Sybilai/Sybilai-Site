class AddUserIdToRanking < ActiveRecord::Migration
  def change
    remove_column :rankings, :name, :string
    add_column :rankings, :user_id, :integer
  end
end
