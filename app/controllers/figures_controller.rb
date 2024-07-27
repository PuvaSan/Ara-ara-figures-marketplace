class FiguresController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    #sort figures by created_at in descending order
    @figures = Figure.all
    @animes = Anime.all
  end

  def new
    @figure = Figure.new
  end

  def create
    @figure = Figure.create(figure_params)
    @figure.user = current_user
    if @figure.save
      # redirect_to list_path(@list)
      redirect_to listed_figures_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @figure = Figure.find(params[:id])
    review_arr = Review.where(reviewee: @figure.user)
    @user_rating = review_arr.map {|rev| rev.rating}.sum / review_arr.count
    @order = Order.new
  end

  def edit
    @figure = Figure.find(params[:id])
  end

  def update
    @figure = Figure.find(params[:id])
    if @figure.update(figure_params)
      redirect_to listed_figures_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def figure_params
    params.require(:figure).permit(:name, :description, :price, :anime_id, :pick_up, :pick_up_location, :delivery, photos: [])
  end
end
