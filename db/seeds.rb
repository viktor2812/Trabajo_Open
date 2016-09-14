# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Warranty.create(tipo_warranty: 'Motorcycle') 
Warranty.create(tipo_warranty: 'Automobile') 
Warranty.create(tipo_warranty: 'Apartment') 
Warranty.create(tipo_warranty: 'Other')  
Client.create(tipo_client: 'Empresa') 
Client.create(tipo_client: 'Persona') 

