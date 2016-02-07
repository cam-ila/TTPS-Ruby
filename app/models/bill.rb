class Bill < ActiveRecord::Base
  belongs_to :client
  belongs_to :person
  validates :description, :date, :amount, :client, :person, presence: true
  validates :description, length: { maximum: 500 }
  validates :amount, numericality: true
end
