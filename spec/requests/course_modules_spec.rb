require 'rails_helper'

RSpec.describe "CourseModules", type: :request do
  describe "GET /course_modules" do
    it "should return success on list modules" do
      user = User.create!(name: "Teste", email: "testemail@gmail.com", password: "123456")
      get course_modules_path
      expect(response).to have_http_status(:success)
    end
  end
end