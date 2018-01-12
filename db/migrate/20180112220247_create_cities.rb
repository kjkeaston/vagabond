class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.text :name
      t.text :city_image

      t.timestamps
    end
  end
end
