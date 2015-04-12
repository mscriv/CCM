# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


invoice = Invoice.create!(invoice_number: "24601")
invoice.line_items.create!(name: "Settlers of Catan", amount: 29.95, quantity: 1)
invoice.line_items.create!(name: "Technodrome", amount: 24.99, quantity: 2)
invoice.line_items.create!(name: "RailsCasts Pro Subscription", amount: 9.00, quantity: 1)
invoice.line_items.create!(name: "Flux Capacitor", amount: 1955.00, quantity: 1)
invoice.line_items.create!(name: "TextMate 2", amount: 75.00, quantity: 3)