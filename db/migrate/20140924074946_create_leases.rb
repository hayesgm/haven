class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :tenant_id
      t.integer :unit_id
      t.decimal :payment_amount
      t.boolean :acitve

      t.timestamps
    end

    add_index :leases, :tenant_id
    add_index :leases, :unit_id
    
  end
end
