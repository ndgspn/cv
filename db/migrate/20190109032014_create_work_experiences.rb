class CreateWorkExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :work_experiences do |t|
      t.string :job_title
      t.string :company
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
