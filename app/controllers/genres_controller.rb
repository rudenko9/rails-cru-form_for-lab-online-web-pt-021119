class GenresController < ApplicationController
  def new
<<<<<<< HEAD
    @genre = Genre.new
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
    end

    private
    def genre_params(*args)
      params.require(:genre).permit(*args)

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
