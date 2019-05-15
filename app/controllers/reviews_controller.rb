class ReviewsController < ApplicationController
  def new
    @reviews = Review.new
  end

  def create
    review = Review.new(restaurant_params)
    review.save
    redirect_to reviews_path
  end
end
