class CourseModulesController < ApplicationController
  def index
    @modules = CourseModule.all
  end

  def show
    @module = CourseModule.find(params[:id])
    @questions = @module.questions
  end
end