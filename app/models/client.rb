class Client < ActiveRecord::Base
	has_many :bills, :dependent => :destroy
	validates :name, :surname, :birthdate, :genre, :dni, :cuil, presence: true
	validates :cuil, length: { is: 11 }
	validates :dni, :cuil, uniqueness: true
	validates_associated :bills

	def age
		now = Time.now.utc.to_date
		now.year - self.birthdate.year - (birthdate.to_date.change(:year => now.year) > now ? 1 : 0)
	end

	def billing_per_year
		hsh = {}
   		self.bills.each{|b| hsh[b.date.year] = hsh.fetch(b.date.year,0) + b.amount}
   		hsh.sort
	end

	def number_per_month
		hsh = {}
		bills_in_year = self.bills.select{|b| b.date.year == Date.today.year }
		bills_in_year.each{|b| hsh[b.date.month] = hsh.fetch(b.date.month,0) + 1}
		hsh.sort
	end

	def more_invoiced
		hsh = {}
		self.bills.each{|b| hsh[b.person.cuit] = hsh.fetch(b.person.cuit,0) + 1}
		hsh.sort_by {|cuil, cant| cant }.first(5)
	end
end
