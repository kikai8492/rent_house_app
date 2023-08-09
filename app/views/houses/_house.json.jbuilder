json.extract! house, :id, :house_name, :rent, :address, :house_age, :remarks, :created_at, :updated_at
json.url house_url(house, format: :json)
