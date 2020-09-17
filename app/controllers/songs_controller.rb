class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create (
      name: params["song"]["name"],
      artist: params["song"]["artist"],
      genre: params["song"]["genre"]
      )
      redirect_to song_path(@song)
  end

  def edit

  end

  def show

  end

  def update

  end

end
