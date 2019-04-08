class GamesController < ApplicationController
 

  def create
  	#créer le tableau de réponses vide
  	redirect_to edit_game_path(1), method: :get
  end
 
  def edit
  end

  def update
  	redirect_to game_path(1), method: :get
  end

  def show
  end

  def home
    redirect_to games_path, method: :get
  end
end