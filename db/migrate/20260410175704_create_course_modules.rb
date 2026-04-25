class CreateCourseModules < ActiveRecord::Migration[7.2]
  def change
    create_table :course_modules do |t|
      t.string :title
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end
