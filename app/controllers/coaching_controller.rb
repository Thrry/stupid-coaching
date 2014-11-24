class CoachingController < ApplicationController

  def answer
    @query = params[:query]
    @answer

    if @query.upcase == "I AM GOING TO WORK RIGHT NOW!"
      @answer = "ok"
    else
      # pas de point interro a la fin
      if @query[-1, 1] != "?"
        @answer = "I don't care, get dressed and go to work!"
      else
        @answer = "Silly question, get dressed and go to work!"
      end
    end
  end

  def ask
  end
end
