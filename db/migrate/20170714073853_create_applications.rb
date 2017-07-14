class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.integer :applicant_id

      t.timestamps
    end

    add_foreign_key :applications, :applicants
  end
end
