class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.string :small_title
      t.string :title
      t.string :pic
      t.string :description
      t.float :price
      t.string :old_price
      t.string :link_to
      t.integer :state
      t.float :position
      t.integer :category_id

      t.timestamps
    end
  end
end
