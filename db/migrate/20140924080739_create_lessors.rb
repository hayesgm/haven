class CreateLessors < ActiveRecord::Migration
  def change
    create_table :lessors do |t|
      t.string :name
      t.string :street_address
      t.string :secondary_address
      t.string :city
      t.string :region
      t.string :postal_code

      t.timestamps
    end
  end
end
