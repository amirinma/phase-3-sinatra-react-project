puts "🌱 Seeding spices..."

# Seed your database here
10.times do
author = Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.male_first_name)

Reader.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
author.readers << Reader.all.sample
# Book.last.ti(title: Faker::Book.title, publish_date: Time.current, author_id: 1)
book = Book.last
book.title = Faker::Book.title
book.publish_date = Time.current
book.author_id = author.id

book.save

end
puts "✅ Done seeding!"

