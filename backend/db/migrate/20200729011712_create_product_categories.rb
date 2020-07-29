class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.string :title
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
