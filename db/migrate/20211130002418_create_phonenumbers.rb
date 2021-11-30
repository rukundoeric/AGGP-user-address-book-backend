class CreatePhonenumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :phonenumbers do |t|
      t.string :phonenumber

      t.timestamps
    end
  end
end
