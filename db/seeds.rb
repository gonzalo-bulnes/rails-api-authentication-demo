# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

password = SecureRandom.base64
User.where(email: 'alice@example.com').first_or_create(password: password, password_confirmation: password, authentication_token: '1G8_s7P-V-4MGojaKD7a')
