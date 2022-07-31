class ConsolesController < ApplicationController

    def index
        @consoles = Game.all
    end

end