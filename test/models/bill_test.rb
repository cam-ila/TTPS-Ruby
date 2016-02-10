require 'test_helper'

class BillTest < ActiveSupport::TestCase
	setup do 
		@client = clients(:five)
	    @person = people(:two)
	end	
	test "cargar factura sin errores de validacion" do	
		@bill = Bill.new(
			description: "factura",
  			date: Date.yesterday,
  			amount: 1000,
			client_id: @client.id,
			person_id: @person.id,
			)
		assert @bill.save
	end

	test "cargar factura con errores de validacion" do	
		@bill = Bill.new(
			description: "factura otra",
  			date: Date.yesterday,
  			amount: "2a000",
			client_id: @client.id,
			person_id: @person.id,
			)
		assert_not @bill.save

	end
end
