json.array!(@employees) do |employee|
  json.extract! employee, :id, :company_name, :company_rfc, :company_address, :company_ext_num, :company_int_num, :company_neighborhood, :company_city, :company_zip, :company_telephone, :company_extension
  json.url employee_url(employee, format: :json)
end
