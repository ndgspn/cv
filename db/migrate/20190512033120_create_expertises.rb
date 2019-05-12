class CreateExpertises < ActiveRecord::Migration[5.2]
  def change
    create_table :expertises do |t|
      t.string :name
      t.string :level

      t.timestamps
    end
  end
end
