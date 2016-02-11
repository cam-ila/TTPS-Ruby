# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

clients = Client.create([
	{name: "camila", surname: "bignone", birthdate: Date.new(1994,1,11), genre: "femenino", dni: 37771994, email: "cami@gmail.com", cuil:27377719946, skype: "camili", telephone: 4299999, address:"45 n°1342"},
	{name: "sarasa" , surname: "sarasa", birthdate:Date.new(1980,10,1) ,genre: "masculino", dni: 300000000 ,email: "sarasa@gmail.com", cuil:30300000001, skype: "sarasa", telephone: 4789362, address:"10 n°234" },
	{name: "juan" , surname: "perez" , birthdate:Date.new(1956,12,12) ,genre:"masculino", dni: 12238256, email: "perez@gmail.com" , cuil: 13122582684, skype:"perez1", telephone: 4229821, address:"Cestino n°1231" },
	{name: "quien", surname: "gomez" , birthdate:Date.new(1999,10,2) ,genre:"masculino", dni:9999999 ,email: "gomez@gmail.com", cuil:99999991212, skype:"gomez0029", telephone: 4101021, address:"43 n°212" }
	])

people = Person.create([
	{name: "agustin suarez", cuit: 12345678999},
	{name: "pedro gonzalez", cuit: 22334455667},
	{name: "juan vicente", cuit: 22322455667},
	{name: "angel lopez", cuit: 23344235667},
	{name: "pesa dilla", cuit: 23111111117},
	{name: "compu lopez", cuit: 23000000067},
	{name: "mala cate", cuit: 23234222667},
	{name: "casa iriarte", cuit: 23010101016},
	])


bills = Bill.create([
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2016,2,10), client:clients[1], person: people[1] },
	{ description: "Reparacion de cremallera", amount: 2000, date: Date.new(2016,1,1), client: clients[1], person:people[1] },
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2016,2,1), client:clients[1], person:people[1] },
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2016,1,10), client:clients[1], person:people[1] },
	{ description: "Reparacion de cremallera", amount: 1990, date: Date.new(2016,2,10), client:clients[1], person:people[2] },
	{ description: "Reparacion de bomba", amount: 990, date: Date.new(2016,2,10), client:clients[1], person:people[2] },
	{ description: "Reparacion de cremallera", amount: 2000, date: Date.new(2016,1,1), client:clients[1], person:people[3]},
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2016,2,10), client:clients[1], person:people[3] },
	{ description: "Reparacion de cremallera", amount: 1990, date: Date.new(2016,2,10), client:clients[1], person:people[4] },
	{ description: "Reparacion de bomba", amount: 990, date: Date.new(2016,2,10), client:clients[1], person:people[4] },
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2016,2,10), client:clients[1], person: people[5] },
	{ description: "Reparacion de cremallera", amount: 2000, date: Date.new(2016,1,1), client: clients[1], person:people[5] },
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2016,2,1), client:clients[1], person:people[6] },
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2016,1,10), client:clients[1], person:people[2] },
	{ description: "Reparacion de bomba", amount: 990, date: Date.new(2015,10,10), client:clients[1], person:people[4] },
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2015,12,10), client:clients[1], person: people[5] },
	{ description: "Reparacion de cremallera", amount: 2000, date: Date.new(2015,11,1), client: clients[1], person:people[5] },
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2015,12,1), client:clients[1], person:people[6] },
	{ description: "Reparacion de bomba", amount: 1000, date: Date.new(2015,12,10), client:clients[1], person:people[2] },
	{ description: "Come on, come on, come on", amount: 100, date: Date.new(2016,1,11), client:clients[0], person:people[7] },
	{ description: "Come on, come on, come on", amount: 10, date: Date.new(2016,1,11), client:clients[2], person:people[0] },
	{ description: "Come on, come on, come on", amount: 100, date: Date.new(2016,2,11), client:clients[3], person:people[7] },
	{ description: "Come on, come on, come on", amount: 100, date: Date.today, client:clients[2], person:people[7] },
	{ description: "Come on, come on, come on", amount: 100, date: Date.today, client:clients[3], person:people[7] },
	{ description: "habia una vez truz", amount: 90, date: Date.new(2016,2,19), client:clients[0], person: people[0] },
	{ description: "una descripcion cualquiera", amount: 2000, date: Date.new(2016,1,1), client: clients[0], person:people[0] },
	{ description: "habia una vez truz", amount: 90, date: Date.new(2016,2,1), client:clients[0], person:people[0] },
	{ description: "habia una vez truz", amount: 90, date: Date.new(2016,1,19), client:clients[0], person:people[0] },
	{ description: "una descripcion cualquiera", amount: 1990, date: Date.new(2016,2,19), client:clients[0], person:people[2] },
	{ description: "habia una vez truz", amount: 990, date: Date.new(2016,2,19), client:clients[0], person:people[2] },
	{ description: "una descripcion cualquiera", amount: 2000, date: Date.new(2016,1,1), client:clients[0], person:people[3]},
	{ description: "habia una vez truz", amount: 90, date: Date.new(2016,2,19), client:clients[0], person:people[3] },
	{ description: "una descripcion cualquiera", amount: 1990, date: Date.new(2016,2,19), client:clients[0], person:people[4] },
	{ description: "habia una vez truz", amount: 990, date: Date.new(2016,2,19), client:clients[0], person:people[4] },
	{ description: "habia una vez truz", amount: 90, date: Date.new(2016,2,19), client:clients[0], person: people[5] },
	{ description: "una descripcion cualquiera", amount: 2000, date: Date.new(2016,1,1), client: clients[0], person:people[5] },
	{ description: "habia una vez truz", amount: 90, date: Date.new(2016,2,1), client:clients[0], person:people[6] },
	{ description: "habia una vez truz", amount: 90, date: Date.new(2016,1,19), client:clients[0], person:people[2] },
	{ description: "habia una vez truz", amount: 990, date: Date.new(2015,10,19), client:clients[0], person:people[4] },
	{ description: "habia una vez truz", amount: 90, date: Date.new(2015,12,19), client:clients[0], person: people[5] },
	{ description: "una descripcion cualquiera", amount: 2000, date: Date.new(2015,11,1), client: clients[0], person:people[5] },
	{ description: "habia una vez truz", amount: 90, date: Date.new(2015,12,1), client:clients[0], person:people[6] },
	{ description: "habia una vez truz", amount: 90, date: Date.new(2015,12,19), client:clients[0], person:people[2] },
	])

