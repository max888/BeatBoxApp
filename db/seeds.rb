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

User.create(name: 'Major Lazer', email: 'lazer@lazer.com', password: 'password', password_confirmation: 'password', role: 'user', bio: 'Major Lazer is an electronic dancehall DJ project created by American DJ/producer Diplo. Formerly a collaboration along with DJ/producer Switch, they parted ways in late 2011. Diplo has since enlisted producers/DJs Jillionaire and Walshy Fire (of Black Chiney) to help with the production and live shows.')


User.create(name: 'Flume', email: 'flume@flume.com', password: 'password', password_confirmation: 'password', role: 'user', bio: 'Harley Edward Streten[1] (born 5 November 1991),[2] better known by his stage name Flume, is an Australian electronic music instrumentalist, producer and DJ. His debut self-titled album was released on 9 November 2012, which peaked at No. 1 on the ARIA Albums Chart and No. 13 in New Zealand. Its lead single, "Holdin On", reached the top 20')

User.create(name: 'Jaguar Skills', email: 'jag@jag.com', password: 'password', password_confirmation: 'password', role: 'user', bio: 'Jaguar Skills is a British Disc Jockey (DJ) who has gained notoriety since 2002 for his eclectic multi-genre, cut-n-paste style Djing mixes. The DJ has released hundreds of mixtapes through various outlets, including BBC Radio 1 and BBC Radio 1Xtra and has a weekly 10 minute mix on The Trevor Nelson Show.')

