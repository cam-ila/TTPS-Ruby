require 'test_helper'

class ClientTest < ActiveSupport::TestCase
   	def setup
	    @client = clients(:three)
	    @client_two = clients(:four)
	    @person = people(:three)
	    @bill = Bill.create(
	    	description: "factura",
			date: Date.today,
			amount: 100,
			client_id: @client.id,
			person_id: @person.id)
	end
	
	test 'creacion' do
		assert_equal 'Jose', @client.name
	end
	
	test 'crear cliente sin datos de contacto' do
		client = Client.new(
			name: "Jai", 
			surname: "Mito", 
			birthdate: Date.new(1990,10,11), 
			genre: "Masculino", 
			dni: 89999222, 
			cuil:2789992226)
		assert_not client.save
	end  #el email es un campo obligatorio
	
	test 'crear cliente ' do
		client = Client.new(
			name: "Jai", 
			surname: "Mito", 
			birthdate: Date.new(1990,10,11), 
			genre: "Masculino", 
			dni: 89999222, 
			cuil:2789992226,
			email: "j@m")
		assert client.save
	end

	test 'crear cliente con datos de contacto ' do
		client = Client.new(
			name: "Jai", 
			surname: "Mito", 
			birthdate: Date.new(1990,10,11), 
			genre: "Masculino", 
			dni: 89999222, 
			cuil:2789992226,
			email: "j@m",
			telephone: 4220404,
			skype: "skype")
		assert client.save
	end

	test 'crear cliente con datos invalidos ' do
		client = Client.new(
			name: "Jai", 
			surname: "Mito", 
			birthdate: Date.new(1990,10,11), 
			genre: "Masculino", 
			dni: "8999922a2", 
			cuil:2789992226,
			email: "j@m",
			telephone: 4220404,
			skype: "skype")
		assert_not client.save
	end # El dni tiene que ser numerico

	test "Borrado de un cliente con facturacion" do
		assert_equal @client.bills.size, 1
		assert Bill.exists? @bill.id
		@client.destroy
		assert_equal @client.bills.size, 0
		assert_not Bill.exists? @bill.id
	end #borra el cliente con sus facturas

	test "Borrado de un cliente sin facturacion" do
		assert_equal @client_two.bills.size, 0
		assert @client.destroy		
	end
end
