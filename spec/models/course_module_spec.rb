require 'rails_helper'

RSpec.describe CourseModule, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }

    it { should validate_presence_of(:order) }
    it { should validate_numericality_of(:order).only_integer }
  end
end
