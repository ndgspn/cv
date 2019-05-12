class AddUserIdToExpertise < ActiveRecord::Migration[5.2]
  def change
    add_column :expertises, :user_id, :integer
  end
end
