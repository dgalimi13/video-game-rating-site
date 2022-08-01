module ReviewsHelper 
    
    def display_header(review)
        if params[:guitar_id]
            content_tag(:h1, "Add a Review for #{review.game.name} - #{review.guitar.console.name}")
        else
            content_tag(:h1, "Create a review")
        end
    end 
    
end 