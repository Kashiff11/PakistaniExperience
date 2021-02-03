class CreateAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :administrators do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
