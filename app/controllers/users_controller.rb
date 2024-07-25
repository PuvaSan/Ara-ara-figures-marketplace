class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @user = User.find(params[:id])
    @reviews = Review.where(reviewee: @user)
    @user_ratings = @reviews.map(&:rating).sum / @reviews.count
    @user_figures_count = Figure.where(user: @user).count
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
