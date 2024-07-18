class Purchases::FiguresController < ApplicationController
  def index
    @orders = Order.all
  end
end
