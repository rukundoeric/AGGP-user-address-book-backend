class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :email
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
