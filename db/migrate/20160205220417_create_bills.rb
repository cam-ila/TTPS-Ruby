class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :description
      t.datetime :date
      t.float :amount
      t.references :client, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
