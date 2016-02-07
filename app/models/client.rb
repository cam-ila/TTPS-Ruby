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
end
