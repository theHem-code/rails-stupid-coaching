class QuestionsController < ApplicationController
  def ask
    # @questions = params[:question]
  end

  def answer
    @questions = params[:question]
    @answers = params[:answer]

    if @questions == 'I am going to work'
      @answer = 'Great!'
    elsif @questions.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
