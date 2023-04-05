class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.time :start_time
      t.string :type
      t.string :status
      t.references :band, null: false, foreign_key: true
      t.references :concert_venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
