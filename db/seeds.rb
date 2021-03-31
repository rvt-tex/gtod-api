# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bulk = QuoteType.create(name: "Bulk"),
Dry_Van = QuoteType.create(name: "Dry Van"),
Expedited = QuoteType.create(name: "Expedited"),
Flat_Bed = QuoteType.create(name: "Flat Bed"),
Full_Truckload = QuoteType.create(name: "Full Truckload(FTL)"),
Hauler = QuoteType.create(name: "Hauler"),
Less_Than_Load = QuoteType.create(name: "Less Than Load (LTL)"),
Parcel = QuoteType.create(name: "Parcel"),
Reefer = QuoteType.create(name: "Reefer")

John_Brown = Shipper.create(first_name: "John", last_name: "Brown", title: "Shipping Manager", department: "Shipping and Receiving", company: "JB Manufacturing", address: "8923 NW 13th St", city: "Coral Springs", state: "FL", zip_code: "33321", email: "jbmanufacturing@gmail.com", phone: "8009256622"),

Eugine_Madison = Shipper.create(first_name: "Eugine", last_name: "Madison", title: "President", department: "Management", company: "Madison Manufacturing", address: "23 NW 15th St", city: "Coral Gables", state: "FL", zip_code: "33021", email: "madisonmanufacturing@gmail.com", phone: 8001234567),

Diane_Golden = Shipper.create(first_name: "Diane", last_name: "Golden", title: "CEO", department: "Management", company: "Golden Manufacturing", address: "123 NW 11th St", city: "Tampa", state: "FL", zip_code: "31031", email: "goldenmanufacturing@gmail.com", phone: 8887145323)


One =FreightQuote.create(first_name: "John", last_name: "Brown", company: "Madison Manufacturing", email: "jbmanufacturing@gmail.com", phone: "8009256622", description: "need assistance", quote_type_id: 8, shipper_id: 1),

Two =FreightQuote.create(first_name: "Eugine", last_name: "Madison", company: "JB Manufacturing", email: "madisonmanufacturing@gmail.com", phone: "8001234567", description: "hot shot service needed", quote_type_id: 2, shipper_id: 2),

Three = FreightQuote.create(first_name: "Diane", last_name: "Golden", company: "Golden Manufacturing", email: "goldenmanufacturing@gmail.com", phone: 8887145323, quote_type_id: 6, shipper_id: 3)
