class GamesController < ApplicationController
    before_action :redirect_if_not_logged_in
   
    def index  
        @games = Game.all
    end 

    def new
        @game = Game.new
    end 

    def create
        @game = Game.new(game_params)
        @game.user_id = session[:user_id]
        if @game.save
            redirect_to game_path(@game)
        else
            render :new
        end 
    end

    private 

    def game_params
        params.require(:game).permit(:name, :description)
    end 

end 
