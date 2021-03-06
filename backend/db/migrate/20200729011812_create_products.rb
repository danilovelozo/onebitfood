class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :product_category, foreign_key: true

      t.timestamps
    end
  end
end
