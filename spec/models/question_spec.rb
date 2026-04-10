require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'associations' do
    it { should belong_to(:course_module) }
  end

  describe 'validations' do
    it { should validate_presence_of(:question_text) }
    it { should validate_presence_of(:option_a) }
    it { should validate_presence_of(:option_b) }
    it { should validate_presence_of(:correct_answer) }
  end
end
