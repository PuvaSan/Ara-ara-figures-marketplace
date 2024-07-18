class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @figure = Figure.find(params[:figure_id])
  end

  def create
    @order = Order.create(order_params)
    @order.buyer = current_user
    if @order.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:figure_id, :pick_up, :delivery)
  end
end
