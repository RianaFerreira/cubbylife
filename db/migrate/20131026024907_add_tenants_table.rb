class AddTenantsTable < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.text :email
      t.integer :phone
      t.integer :unit_id
      t.timestamps
    end
  end
end
