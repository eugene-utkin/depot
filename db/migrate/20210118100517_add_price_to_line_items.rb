class AddPriceToLineItems < ActiveRecord::Migration[6.0]
  def change
    add_column :line_items, :price, :decimal, precision: 8, scale: 2, delimiter: " "

    LineItem.all.each do |product_id, price|
      product = Product.find_by(id: product_id)
      price = product[:price]
      LineItem.where(product_id: product_id).update(price: price)
    end
  end
end
