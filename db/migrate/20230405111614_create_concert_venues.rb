class CreateConcertVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :concert_venues do |t|
      t.string :name
      t.string :street
      t.string :zip
      t.string :city
      t.string :canton
      t.string :website
      t.string :phone
      t.integer :capacity

      t.timestamps
    end
  end
end
