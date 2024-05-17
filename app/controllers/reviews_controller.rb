class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @song = Song.find(params[:song_id])
  end

  def create
    @review = Review.new(review_params)
    @song = Song.find(params[:song_id])
    @review.song = @song
    if @review.save
      redirect song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
