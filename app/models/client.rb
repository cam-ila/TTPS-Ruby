class Client < ActiveRecord::Base
	has_many :bills, :dependent => :destroy
	validates :name, :surname, :birthdate, :genre, :dni, :cuil, :email, presence: true
	validates :dni, :cuil, uniqueness: true, numericality: { only_integer: true }
	validates_associated :bills

	def age
		now = Time.now.utc.to_date
		now.year - birthdate.year - (birthdate.to_date.change(:year => now.year) > now ? 1 : 0)
	end

	def billing_per_year
		hsh = {}
   		bills.each{|b| hsh[b.date.year] = hsh.fetch(b.date.year,0) + b.amount}
   		hsh.sort
	end

	def number_per_month
		hsh = {}
		bills_in_year = bills.select{|b| b.date.year == Date.today.year }
		bills_in_year.each{|b| hsh[b.date.month] = hsh.fetch(b.date.month,0) + 1}
		hsh.sort
	end

	def more_invoiced
		hsh = {}
		bills.each{|b| hsh[b.person] = hsh.fetch(b.person,0) + 1}
		hsh.sort_by {|p, cant| cant }.reverse.first(5)
	end

	def full_name
  		[name, surname].join ", "
  	end
end
