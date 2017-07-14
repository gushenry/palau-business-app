class CreateApplicants < ActiveRecord::Migration[5.1]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :fax
      t.string :email
      t.integer :user_id
      t.boolean :active

      t.timestamps
    end

    add_foreign_key :applicants, :users
  end
end
