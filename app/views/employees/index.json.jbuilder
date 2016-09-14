json.array!(@employees) do |employee|
  json.extract! employee, :id, ::name, :surname, :rfc, :address, :ext_num, :int_num, :neighborhood, :city, :country, :zip
  json.url employee_url(employee, format: :json)
end
