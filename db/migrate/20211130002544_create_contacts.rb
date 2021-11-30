class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :fist_name
      t.string :last_name

      t.references :phonenumber, foreign_key: true
      t.references :email, foreign_key: true

      t.timestamps
    end
  end
end
