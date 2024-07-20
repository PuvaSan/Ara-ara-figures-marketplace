class AnimesController < ApplicationController
  def index
    @animes = Animes.all
  end

  def show
    @anime = Anime.find(params[:id])
    @figures = Figure.where(anime_id: @anime.id)
  end

  def autocomplete
    term = params[:term]
    animes = Anime.where('title LIKE ?', "%#{term}%").order(:title).limit(10).pluck(:title)
    render json: animes
  end

end
