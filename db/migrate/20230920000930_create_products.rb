class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :value
      t.string :restaurant_id

      t.timestamps
    end
  end
end
