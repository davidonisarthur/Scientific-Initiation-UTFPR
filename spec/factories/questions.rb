FactoryBot.define do
  factory :question do
    course_module { nil }
    question_text { "MyText" }
    option_a { "MyString" }
    option_b { "MyString" }
    option_c { "MyString" }
    option_d { "MyString" }
    correct_answer { "MyString" }
    video_libras_url { "MyString" }
  end
end
