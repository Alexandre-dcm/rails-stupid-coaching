class QuestionsController < ApplicationController
  def ask

  end

  def answer
    if params[:question]
     @question = params[:question]
      @answer = ""
      if @question == 'Can I go shopping ?'
        @answer = 'Silly question ! Go back to work !'
      elsif @question == "I'm going to work"
        @answer = 'Great!'
      else
        @answer = "I don't care, get dressed and go back to work !"
      end
     return @answer
    end
  end
end
