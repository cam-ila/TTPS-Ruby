class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.datetime :birthdate
      t.string :genre
      t.integer :dni
      t.integer :cuil
      t.string :skype
      t.string :email
      t.string :telephone
      t.string :address

      t.timestamps null: false
    end
  end
end
