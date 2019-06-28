class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :icon
      t.string :email

      t.timestamps
    end
  end
end
