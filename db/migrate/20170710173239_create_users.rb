class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :Full_name
      t.string :Street_Address
      t.string :City
      t.string :State
      t.string :Postal
      t.string :Code
      t.string :Country
      t.string :Email
      t.string :Address
      t.string :Username
      t.string :Password

      t.timestamps
    end
  end
end
