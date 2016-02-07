# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
clients = Client.create([
	{name: "camila", surname: "bignone", birthdate: Date.new(1994,1,11), genre: "f", dni: 31771994, cuil:27377719946},
	{name: "sarasa" , surname: "sarasa", birthdate:Date.new(1980,10,1) ,genre: "m", dni: 300000000 , cuil:30300000001 },
	{name: "juan" , surname: "perez" , birthdate:Date.new(1956,12,12) ,genre:"m", dni: 12238256 , cuil: 13122582684 },
	{name: "quien", surname: "gomez" , birthdate:Date.new(1999,10,2) ,genre:"m", dni:9999999 , cuil:9999999999 }
	])

peoples = Person.create([
	{name: "soy una persona", cuit: 12345678999},
	{name: "persona dos", cuit: 22334455667}
	])
	
bills = Bill.create([{ description: "dos", amount: 100, date: Date.today, client_id:2, person_id:1 }])