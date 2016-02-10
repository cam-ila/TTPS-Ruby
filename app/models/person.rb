class Person < ActiveRecord::Base
	has_many :bills, inverse_of: :Person
	validates :name, :cuit, presence: true
	validates :cuit, uniqueness: true
end