require 'rails_helper'

RSpec.describe UserAnswer, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:question) }
  end

  describe 'validations' do
    it { should validate_presence_of(:user_choice) }

    # Vamos garantir que o campo 'correct' seja booleano (true ou false)
    it { should allow_value(true).for(:correct) }
    it { should allow_value(false).for(:correct) }
  end
end
