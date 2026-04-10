FactoryBot.define do
  factory :user_answer do
    user { nil }
    question { nil }
    user_choice { "MyString" }
    correct { false }
  end
end
