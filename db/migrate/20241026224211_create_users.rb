class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
    end
  end
end
