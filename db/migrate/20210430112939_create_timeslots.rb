class CreateTimeslots < ActiveRecord::Migration[6.0]
  def change
    create_table :timeslots do |t|
      t.string :day
      t.datetime :morning_start_hour
      t.datetime :morning_end_hour
      t.datetime :afternoon_start_hour
      t.datetime :afternoon_end_hour
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
