class GamesController < ApplicationController
   
    def new
        @guitar = Guitar.new
        @guitar.build_make
    end 

end 
