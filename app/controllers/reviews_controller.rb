class ReviewsController < ApplicationController
  before_action :set_aircraft, only: %i[new create destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.aircraft = @aircraft
    @review.user = current_user
    if @review.save
      redirect_to aircraft_path(@aircraft)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    @aircraft = Aircraft.find(@review.aircraft_id)
    redirect_to aircraft_path(@aircraft)
  end

  def destroy
    @review.destroy
    redirect_to aircraft_path(@review.aircraft), status: :see_other
  end

  private

  def set_aircraft
    @aircraft = Aircraft.find(params[:aircraft_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

end
