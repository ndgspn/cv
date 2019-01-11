class AddUserIdToFormalEducations < ActiveRecord::Migration[5.2]
  def change
    add_column :formal_educations, :user_id, :integer
  end
end
