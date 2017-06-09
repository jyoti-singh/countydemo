class CreateProductDetails < ActiveRecord::Migration
  def change
    create_table :product_details do |t|
      t.string :name
      t.[] :product_ids

      t.timestamps null: false
    end
  end
end
