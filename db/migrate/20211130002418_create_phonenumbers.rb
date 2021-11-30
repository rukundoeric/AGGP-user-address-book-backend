class CreatePhonenumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :phonenumbers do |t|
      t.string :phonenumber
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
