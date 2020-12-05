class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :stock
      t.string :image
      t.text :description
      t.integer :category_id

      t.timestamps
    end
  end
end
