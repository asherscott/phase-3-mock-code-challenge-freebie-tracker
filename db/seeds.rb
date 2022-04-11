puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

# t.string "item_name"
# t.integer "value"
# t.integer "dev_id"
# t.integer "company_id"

20.times do
Freebie.create(
    item_name: Faker::Game.title, 
    value: rand(41..44),
    dev_id: rand(41..44),
    company_id: rand(41..44),
    )
end

puts "Seeding done!"
