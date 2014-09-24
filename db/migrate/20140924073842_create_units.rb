class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :lessor_id
      t.string :address
      t.string :unit_number
      t.string :city
      t.string :state
      t.string :postal_code
      t.decimal :total_rent
      t.integer :payment_day

      t.timestamps
    end

    add_index :units, :lessor_id
  end
end
