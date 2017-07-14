class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :zip
      t.text :location
      t.string :phone
      t.string :fax
      t.string :email
      t.date :business_start_date
      t.boolean :receipts_over_10000
      t.integer :number_regular_employees
      t.integer :number_part_time_employees
      t.string :tax_status
      t.string :type
      t.integer :application_id
      t.boolean :active

      t.timestamps
    end
  end
end
