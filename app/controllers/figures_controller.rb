class FiguresController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @figures = Figure.all
  end

  def new
    @figure = Figure.new
  end

  # def create
  #   @figure = Figure.create(figure_params)
  # end

  private

  # def figure_params
  #   params.require(:figure).permit()
  # end
end
