class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :section
      t.string :code
      t.integer :open_seats
      t.integer :course_id

      t.timestamps
    end
  end
end
