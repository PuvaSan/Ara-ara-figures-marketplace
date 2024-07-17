class Listed::FiguresController < ApplicationController
  def index
    @orders = Order.all
    @figures = Figure.all
  end
end
