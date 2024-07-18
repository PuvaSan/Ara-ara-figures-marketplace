class FiguresController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :index

  def index
    @figures = Figure.all
    @animes = Anime.all
  # Remove the extra 'end' keyword

  def new
    @figure = Figure.new
  # Remove the extra 'end' keyword

  def create
     @figure = Figure.create(figure_params)
   end

    @figure = Figure.create(figure_params)
    @figure.user = current_user
    if @figure.save
      # redirect_to list_path(@list)
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def figure_params
     params.require(:figure).permit()
   end
    params.require(:figure).permit(:name, :description, :price, :anime_id, :pick_up, :delivery, photos: [])
  end
end
