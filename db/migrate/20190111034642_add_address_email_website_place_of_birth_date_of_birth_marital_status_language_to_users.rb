class AddAddressEmailWebsitePlaceOfBirthDateOfBirthMaritalStatusLanguageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
    add_column :users, :email, :string
    add_column :users, :website, :string
    add_column :users, :place_of_birth, :string
    add_column :users, :date_of_birth, :string
    add_column :users, :marital_status, :string
    add_column :users, :language, :string
  end
end
