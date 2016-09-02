# Let's user generate an x number of business cards

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("business_cards.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS business_cards(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
	email VARCHAR(255),
	company VARCHAR(255),		
	address VARCHAR(255),
	city VARCHAR(255),
	state VARCHAR(255),
	zip INTEGER)
SQL



db.execute(create_table)

def create_business_cards(db, name, email, company, address, city, state, zip)
	db.execute("INSERT INTO business_cards (name, email, company, address, city, state, zip) VALUES (?,?,?,?,?,?,?)", [name, email, company, address, city, state, zip])
end

3.times do create_business_cards(db,Faker::Name.name, Faker::Internet.email, Faker::Company.name, Faker::Address.street_address, Faker::Address.city,
"California", Faker::Address.zip_code)
end

db.execute("SELECT * FROM business_cards")
