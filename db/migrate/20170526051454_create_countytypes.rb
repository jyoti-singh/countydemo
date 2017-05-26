class CreateCountytypes < ActiveRecord::Migration
  def change
    create_table :countytypes do |t|
      t.string :type

      t.timestamps
    end
  end
end
