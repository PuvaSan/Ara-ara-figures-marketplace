class AnimesController < ApplicationController
  def index
    @animes = Anime.all
  end

  def search
    @anime = Anime.find_by('lower(title) = ?', params[:query].downcase)
    if @anime
      redirect_to anime_path(@anime)
    else
      flash[:notice] = "Anime not found"
      redirect_to root_path
    end
  end

  def autocomplete
    term = params[:term].downcase
    animes = Anime.where('lower(title) LIKE ?', "%#{term}%").pluck(:title)
    render json: animes
  end

  def show
    @anime = Anime.find(params[:id])
    @figures = Figure.where(anime_id: @anime.id)
  end

end
