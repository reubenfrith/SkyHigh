class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.aircraft = @aircraft
    if @review.save
      redirect_to aircraft_path(@aircraft)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review.destroy
    redirect_to aircraft_path(@review.aircraft), status: :see_other
  end

  private

  def set_restaurant
    @aircraft = Aircraft.find(params[:aircraft_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

end
