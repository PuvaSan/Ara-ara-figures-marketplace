class AnimesController < ApplicationController
  def index
    @animes = Animes.all
  end

  def show
    @anime = Anime.find(params[:id])
  end
end
