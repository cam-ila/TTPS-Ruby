# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
clients = Client.create([
	{name: "camila", surname: "bignone", birthdate: Date.new(1994,1,11), genre: "femenino", dni: 37771994, email: "cami@gmail.com", cuil:27377719946},
	{name: "sarasa" , surname: "sarasa", birthdate:Date.new(1980,10,1) ,genre: "masculino", dni: 300000000 ,email: "sarasa@gmail.com", cuil:30300000001 },
	{name: "juan" , surname: "perez" , birthdate:Date.new(1956,12,12) ,genre:"masculino", dni: 12238256, email: "perez@gmail.com" , cuil: 13122582684 },
	{name: "quien", surname: "gomez" , birthdate:Date.new(1999,10,2) ,genre:"masculino", dni:9999999 ,email: "gomez@gmail.com", cuil:9999999999 }
	])

peoples = Person.create([
	{name: "agustin suarez", cuit: 12345678999},
	{name: "pedro gonzalez", cuit: 22334455667},
	{name: "juan vicente", cuit: 22322455667},
	{name: "angel lopez", cuit: 23344235667},
	])
	
bills = Bill.create([
	{ description: "Reparacion de bomba", amount: 1000, date: Date.today, client_id:1, person_id:1 },
	{ description: "Reparacion de cremallera", amount: 2000, date: Date.new(2016,1,1), client_id:1, person_id:1 },
	{ description: "Reparacion de bomba", amount: 1000, date: Date.today, client_id:1, person_id:2 },
	{ description: "Reparacion de cremallera", amount: 1990, date: Date.today, client_id:1, person_id:3 },
	{ description: "Reparacion de bomba", amount: 990, date: Date.today, client_id:1, person_id:4 },
	])