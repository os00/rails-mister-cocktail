class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    puts "**********************************"
    puts "CREATE"
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    # @doses = @cocktail.doses
    @review.cocktail = @cocktail
    if @review.save
      redirect_to @cocktail
    else
      #redirect_to @cocktail
      render "cocktails/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:name, :content, :rating)
  end

end
