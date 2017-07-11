class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :phone_number
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
