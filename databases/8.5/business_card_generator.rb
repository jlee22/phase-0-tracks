# Let's user generate an x number of business cards
# The database is reset each time the code is ran to prevent previous cards from showing up

require 'sqlite3'
require 'faker'


db = SQLite3::Database.new("data.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS cards(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
	email VARCHAR(255),
	phone INTEGER,
	company VARCHAR(255),		
	address VARCHAR(255),
	city VARCHAR(255),
	state VARCHAR(255),
	zip INTEGER);
SQL

db.execute("DROP TABLE cards;")
db.execute(create_table)

def create_business_cards(db, name, email, phone, company, address, city, state, zip)
	db.execute("INSERT INTO cards (name, email, phone, company, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [name, email, phone, company, address, city, state, zip])
end

#User Interface
puts "How many cards would you like to make?"
answer = gets.chomp
answer.to_i.times do 
	create_business_cards(db, Faker::Name.name, Faker::Internet.email, Faker::PhoneNumber.phone_number, Faker::Company.name, Faker::Address.street_address, Faker::Address.city, "California", Faker::Address.zip_code)
end

#Output
puts "Here are your generated cards:"
cards = db.execute("SELECT * FROM cards;")
cards.each do |card|
	puts "Name: #{card['name']}, Email:#{card['email']}, Phone Number:#{card['phone']}, Company Name:#{card['company']}, Street Address:#{card['address']}, City:#{card['city']}, State:#{card['state']}, Zip:#{card['zip']}"
end

