class DashboardController < ApplicationController
  def index
    @total_questions = Question.count

    @user_answers = current_user.user_answers

    @answered_count = @user_answers.select(:question_id).distinct.count

    @correct_count = @user_answers.where(correct: true).select(:question_id).distinct.count

    if @answered_count > 0
      @accuracy = ((@correct_count.to_f / @answered_count) * 100).round(1)
    else
      @accuracy = 0
    end
  end
end
