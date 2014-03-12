class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :area
      t.text :address
      t.string :mail_id
      t.string :mobile_number
      t.timestamps
    end
  end
end
