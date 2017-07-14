json.extract! applicant, :id, :name, :address, :phone, :fax, :email, :active, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)
