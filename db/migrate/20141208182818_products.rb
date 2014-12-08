class Products < ActiveRecord::Migration
  def change
    create_table :products do |p|

      p.string :name
      p.text :description
      p.integer :price

    end
  end
end


#
# Users can create a product,
# which has a name (string),
# description (text / text_area)
# and price (integer).
