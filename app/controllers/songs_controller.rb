class SongsController < ApplicationController
  def new
<<<<<<< HEAD
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@songs)
    end

    private

    def song_params(*args)
      params.require(:songs).permit(*args)
    end
=======
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end
>>>>>>> fb377da8ba8a3b7d004aa0116bc352d2e43bb63b
end
