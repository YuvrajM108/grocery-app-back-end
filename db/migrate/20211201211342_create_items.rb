class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.number :quantity
      t.text :image_url

      t.timestamps
    end
  end
end
