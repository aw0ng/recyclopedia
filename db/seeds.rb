# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Donor.create(email: "anna@test.com", donor_name: "Anna", donor_surname: "Wong")
Donor.create(email: "lexa@test.com", donor_name: "Lexa", donor_surname: "Wong")
Donor.create(email: "harry@test.com", donor_name: "Harry", donor_surname: "Abrahamsen")
Donor.create(email: "tara@test.com", donor_name: "Tara", donor_surname: "Charnow")
Donor.create(email: "adara@test.com", donor_name: "Adara", donor_surname: "Gemellaro")
Donor.create(email: "joey@test.com", donor_name: "Joey", donor_surname: "Gemellaro")

Receiver.create(receiver_name: "Habitat for Humanity ReStore")
Receiver.create(receiver_name: "Amity Thrift Shop")
Receiver.create(receiver_name: "Project Discovery")
Receiver.create(receiver_name: "Hope Chest Thrift Boutique")
Receiver.create(receiver_name: "Twice Blessed Thrift Shoppe")
Receiver.create(receiver_name: "Bee Hive Thrift Shop")
Receiver.create(receiver_name: "Back on the Rack")
Receiver.create(receiver_name: "Goodwill")
Receiver.create(receiver_name: "TLC Thrift")
Receiver.create(receiver_name: "Best Buy")
Receiver.create(receiver_name: "Staples")
Receiver.create(receiver_name: "Craig's List Hudson Valley Free Stuff")

Category.create(category_type: "Appliances_Large")
Category.create(category_type: "Appliances_Small")
Category.create(category_type: "Architectural")
Category.create(category_type: "Artwork")
Category.create(category_type: "Baby")
Category.create(category_type: "Home Linens")
Category.create(category_type: "Clothing")
Category.create(category_type: "Clothing Accessories")
Category.create(category_type: "Countertops & Cabinets")
Category.create(category_type: "Doors")
Category.create(category_type: "Electrical Materials")
Category.create(category_type: "Electronics")
Category.create(category_type: "Everything_Else")
Category.create(category_type: "Exercise")

Item.create(item_name: "electric range", quantity: 1, condition: "used", category_id: 1, donor_id: 1)
Item.create(item_name: "refrigerator", quantity: 1, condition: "like new", category_id: 1, donor_id: 3)
Item.create(item_name: "toaster", quantity: 1, condition: "good", category_id: 2, donor_id: 2)
Item.create(item_name: "bricks", quantity: 50, condition: "good", category_id: 3, donor_id: 6)
Item.create(item_name: "stroller", quantity: 1, condition: "good", category_id: 5, donor_id: 4)
Item.create(item_name: "sheets", quantity: 3, condition: "good", category_id: 6, donor_id: 5)
Item.create(item_name: "coat", quantity: 2, condition: "used", category_id: 7, donor_id: 2)
Item.create(item_name: "sneakers", quantity: 4, condition: "like new", category_id: 8, donor_id: 1)
Item.create(item_name: "toilet", quantity: 1, condition: "good", category_id: 9, donor_id: 3)
Item.create(item_name: "storm door", quantity: 1, condition: "used", category_id: 10, donor_id: 6)
Item.create(item_name: "switch plate", quantity: 7, condition: "like new", category_id: 11, donor_id: 6)
Item.create(item_name: "record player", quantity: 1, condition: "used", category_id: 12, donor_id: 5)
Item.create(item_name: "weights", quantity: 6, condition: "good", category_id: 14, donor_id: 4)
Item.create(item_name: "peleton bike", quantity: 1, condition: "like new", category_id: 14, donor_id: 2)
Item.create(item_name: "dress shoes", quantity: 1, condition: "like new", category_id: 8, donor_id: 1)
Item.create(item_name: "breast pump", quantity: 1, condition: "good", category_id: 5, donor_id: 4)
Item.create(item_name: "canvas frames", quantity: 4, condition: "like new", category_id: 4, donor_id: 5)