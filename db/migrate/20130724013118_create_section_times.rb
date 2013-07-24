class CreateSectionTimes < ActiveRecord::Migration
  def change
    create_table :section_times do |t|
      t.string :day
      t.time :start_time
      t.time :end_time
      t.string :instructor
      t.string :building
      t.string :room
      t.boolean :online
      t.integer :section_id

      t.timestamps
    end
  end
end
