class CourseModulesController < ApplicationController
  def index
    @modules = CourseModule.all
  end
end
