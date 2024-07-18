class FiguresController < ApplicationController
<<<<<<< HEAD
  skip_before_action :authenticate_user!
=======
  skip_before_action :authenticate_user!, only: :index
>>>>>>> a6d777bf72a6248268e09e309464ea5f32766da4

  def index
    @figures = Figure.all
    @animes = Anime.all
  end

  def new
    @figure = Figure.new
  end

  def create
<<<<<<< HEAD
     @figure = Figure.create(figure_params)
   end

=======
    @figure = Figure.create(figure_params)
    @figure.user = current_user
    if @figure.save
      # redirect_to list_path(@list)
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
>>>>>>> a6d777bf72a6248268e09e309464ea5f32766da4

  private

  def figure_params
<<<<<<< HEAD
     params.require(:figure).permit()
   end
=======
    params.require(:figure).permit(:name, :description, :price, :anime_id, :pick_up, :delivery, photos: [])
  end
>>>>>>> a6d777bf72a6248268e09e309464ea5f32766da4
end
