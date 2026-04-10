require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:email) }
  end

  describe 'authentication' do
    it { should have_secure_password }
  end

  describe 'enums' do
    it { should define_enum_for(:role).with_values(student: 0, teacher: 1) }
  end
end
