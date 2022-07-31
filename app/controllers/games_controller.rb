class GamesController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_game, only: [:show]
   
    def index  
        @games = Game.all
    end 

    def new
        @game = Game.new
        @game.build_console
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

    def set_game
        @game = Game.find_by_id(params[:id])
        redirect_to games_path if !@game
    end 

    def game_params
        params.require(:game).permit(:name, :description)
    end 

end 
