class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :prefix
      t.integer :number
      t.string :title
      t.string :subject
      t.float :credits
      t.float :hours
      t.text :description

      t.timestamps
    end
  end
end
