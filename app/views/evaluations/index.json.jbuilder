json.array!(@employees) do |employee|
  json.extract! employee, :id, :repuve, :rapi, :amis, :transunion, :ci_auto, :agency_invoice_ok, :ine_ok, :buho_ok, :invoice_sat_ok:commercial_cost
  json.url employee_url(employee, format: :json)
end 
