class AnimesController < ApplicationController
  def index
    @animes = Animes.all
  end

  def show
    @anime = Anime.find(params[:id])
    @figures = Figure.where(anime_id: @anime.id)
    # @searched_anime = params[:anime] # Assume you get the anime title from params
    # @figures = @figures.select { |figure, anime| anime == @searched_anime } if @searched_anime.present?
  end

end
