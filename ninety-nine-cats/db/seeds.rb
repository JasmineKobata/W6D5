# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#ApplicationRecord.transaction do
  # Destroy tables (not necessary if using `rails db:seed:replant`)
  puts 'Destroying tables...'
  Cat.destroy_all

  # Reset primary keys (i.e., ids) 
  puts 'Resetting id sequences...'
  %w(Cats).each do |table_name|
    ApplicationRecord.connection.reset_pk_sequence!(table_name)
  end

  # Create seed data
  # debugger
  puts 'Creating seed data...'
  c1 = Cat.create!(name: 'Eric', birth_date: '2015-01-15', color: 'white', sex: 'M', description: 'Cat 1')
  c2 = Cat.create!(name: 'Ralph', birth_date: '2016-10-15', color: 'black', sex: 'M', description: 'Cat 2')
  c3 = Cat.create!(name: 'Jeff', birth_date: '2017-12-30', color: 'yellow', sex: 'F', description: 'Cat 3')
  c4 = Cat.create!(name: 'Bob', birth_date: '2022-01-01', color: 'brown', sex: 'F', description: 'Cat 4')

  puts 'Done!'
#end