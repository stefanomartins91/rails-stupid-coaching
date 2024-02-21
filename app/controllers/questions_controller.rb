class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_message = params[:question]
    if @user_message == 'I am going to work'
      @coach_response = 'Great'
    elsif @user_message [-1] == "?"
      @coach_response = "Silly question, get dressed and go to work!"
    else
      @coach_response = "I don't know what to say."
    end
  end
end

# >> params[:answer]
# => "oie"
