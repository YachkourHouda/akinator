class GamesController < ApplicationController
 
  QUESTIONS = [
   "Does it have clear eyes?",
   "Is this a male?",
   "Is he vegan?",
   "Is he from Aquitaine?"
  ]

  def create
  	#créer le tableau de réponses vide
  	redirect_to edit_game_path(1, 0), method: :get
  end
 
  def edit
     @question_id = params["question_id"].to_i
    @question = QUESTIONS[@question_id]
 end

  def update
    @question_id = params["question_id"].to_i
    if @question_id < QUESTIONS.size
      redirect_to edit_game_path(id: 1, question_id: @question_id), method: :get
    else
      redirect_to game_path(id: 1), method: :get
    end
  end

  def show
    @question_id = QUESTIONS
  end

  def home
    redirect_to games_path, method: :get
  end
end