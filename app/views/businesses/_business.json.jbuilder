json.extract! business, :id, :name, :address, :zip, :location, :phone, :fax, :email, :business_start_date, :receipts_over_10000, :number_regular_employees, :number_part_time_employees, :tax_status, :type, :active, :created_at, :updated_at
json.url business_url(business, format: :json)
