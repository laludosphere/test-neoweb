class CreateTimeslots < ActiveRecord::Migration[6.0]
  # generate model Timeslot with foreign key restaurant
  def change
    create_table :timeslots do |t|
      t.string :day
      t.date :start_hour
      t.date :end_hour
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
