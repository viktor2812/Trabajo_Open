json.array!(@employees) do |employee|
  json.extract! employee, :id, :description, :year, :street, :ext_numb, :int_numb, :neighborhood, :city, :zip, :commercial_cost
  json.url employee_url(employee, format: :json)
end
