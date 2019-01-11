class CreateFormalEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :formal_educations do |t|
      t.string :university_name
      t.string :major
      t.string :degree
      t.string :start_date
      t.string :end_date
    end
  end
end
