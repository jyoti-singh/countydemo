class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone_no
      t.text :description

      t.timestamps null: false
    end
  end
end
