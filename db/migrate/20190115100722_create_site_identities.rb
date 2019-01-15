class CreateSiteIdentities < ActiveRecord::Migration[5.2]
  def change
    create_table :site_identities do |t|
      t.string :site_name
      t.text :site_description
      t.string :site_meta
    end
  end
end
