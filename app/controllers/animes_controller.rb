class AnimesController < ApplicationController
  def search
    @animes = Anime.where('lower(title) LIKE ?', "%#{params[:query].downcase}%")
    if @animes.any?
      render :index
    else
      flash[:notice] = "No anime found"
      redirect_to root_path
    end
  end

  def autocomplete
    term = params[:term].downcase
    animes = Anime.where('lower(title) LIKE ?', "%#{term}%").pluck(:title)
    render json: animes
  end

  def index
    # This will be used to display the search results
    byebug
  end

  def show
    @anime = Anime.find(params[:id])
  end

end
