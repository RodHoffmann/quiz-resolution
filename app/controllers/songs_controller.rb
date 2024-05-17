class SongsController < ApplicationController
  def search
    raise
    #@search = Song.where(title: params[:query])
    @search = Song.where(title: params[:name])
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @song = Song.find(params[:id])
end

  private

  def song_params
    params.require(:song).permit(:title, :year)
  end
end
