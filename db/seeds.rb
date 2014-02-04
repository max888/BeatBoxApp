# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Song.delete_all

User.create(name: 'admin', email: 'admin@admin.com', password: 'password', password_confirmation: 'password', role: 'admin')

User.create(name: 'bob', email: 'bob@bob.com', password: 'password', password_confirmation: 'password', role: 'user')


User.create(name: 'steve', email: 'steve@steve.com', password: 'password', password_confirmation: 'password', role: 'user')

User.create(name: 'harry', email: 'harry@harry.com', password: 'password', password_confirmation: 'password', role: 'user')

