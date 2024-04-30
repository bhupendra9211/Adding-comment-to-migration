class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products, comment: 'Products table' do |t|
      t.string :name, comment: 'Name of the product to create'
      t.string :barcode, comment: 'Barcode of the product'
      t.string :description, comment: 'Product details'
      t.string :msrp, comment: 'Maximum Retail Price'
      t.string :our_price, comment: 'Selling price'

      t.timestamps
    end
  end
end
