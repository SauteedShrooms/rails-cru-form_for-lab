class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    name = params["song"]["name"]
    artist = Artist.find_or_create_by(name: params["song"]["artist"])
    genre = Genre.find_or_create_by(name: params["song"]["genre"])
    @song = Song.create(name: name, artist: artist, genre: genre)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params["id"])
  end

  def show
    @song = Song.find(params["id"])
  end

  def update

  end

end
