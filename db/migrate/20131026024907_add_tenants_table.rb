class AddTenantsTable < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.text :email
      t.integer :phone
      t.timestamps
    end
  end
end
