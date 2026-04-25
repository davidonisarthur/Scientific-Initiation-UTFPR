class UserAnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])

    user_choice = params[:user_choice]

    if user_choice.blank?
      redirect_to course_module_path(@question.course_module.id), alert: "Selecione uma alternativa!"
      return
    end

    is_correct = (user_choice == @question.correct_answer)

    UserAnswer.create!(
      user: current_user,
      question: @question,
      user_choice: user_choice,
      correct: is_correct
    )

    if is_correct
      redirect_to course_module_path(@question.course_module_id), notice: "Acertou!"
    else
      redirect_to course_module_path(@question.course_module_id), alert: "Errou!"
    end

  end
end
