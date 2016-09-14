json.array!(@employees) do |employee|
  json.extract! employee, :id, :brand, :model, :year, :serie_chasis, :serie_engine, :commercial_cost
  json.url employee_url(employee, format: :json)
end
