class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_type
      t.string :price
      t.string :author_name
      t.string :summary

      t.timestamps
    end
  end
end
