class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :address
      t.string :institution
      t.string :job
      t.string :webpage
      t.string :citation_name
      t.text :areas_of_interest
      t.text :additional_information

      t.timestamps
    end
  end
end
