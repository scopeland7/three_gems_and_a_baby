# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#clear out existing Authors and Books
Author.destroy_all
Book.destroy_all

#Create 5 Authors
5.times do
	author = Author.create(
		name: Faker::Name.name,
		email: Faker::Internet.email,
	)


	#With 3 books each
	3.times do
		author.books.create(
			title: Faker::Book.title,
			summary: Faker::Lorem.paragraphs,
		)
	end
end