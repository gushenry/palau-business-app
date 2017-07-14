class AddForeignKeyToBusiness < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :businesses, :applications
  end
end
