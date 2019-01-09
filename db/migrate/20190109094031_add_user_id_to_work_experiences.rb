class AddUserIdToWorkExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :work_experiences, :user_id, :integer
  end
end
