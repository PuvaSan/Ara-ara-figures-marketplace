class FiguresController < ApplicationController
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