class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
<<<<<<< HEAD
    @artist = Artist.new(artist_params(:name, :bio))
=======
    @artist = Artist.new(post_params(:name, :bio))
>>>>>>> fb377da8ba8a3b7d004aa0116bc352d2e43bb63b
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
<<<<<<< HEAD
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
    end

    private
    def artist_params(*args)
      params.require(:artist).permit(*args)

    end

=======
    @artist.update(post_params(:name, :bio))
    redirect_to post_path(@artist)
    end
    
    private 
    def post_params(*args)
      params.require(:artist).permit(*args)
      
    end
    
>>>>>>> fb377da8ba8a3b7d004aa0116bc352d2e43bb63b
end
