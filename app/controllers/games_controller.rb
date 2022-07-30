class GamesController < ApplicationController
   
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
