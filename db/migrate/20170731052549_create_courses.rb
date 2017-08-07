class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :content
      t.string :image
      t.datetime :start_date
      t.datetime :end_date
      t.integer :limit_person
      t.string :course_summary

      t.timestamps
    end
  end
end
