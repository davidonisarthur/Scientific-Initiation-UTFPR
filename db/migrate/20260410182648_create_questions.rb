class CreateQuestions < ActiveRecord::Migration[7.2]
  def change
    create_table :questions do |t|
      t.references :course_module, null: false, foreign_key: true
      t.text :question_text
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d
      t.string :correct_answer
      t.string :video_libras_url

      t.timestamps
    end
  end
end
