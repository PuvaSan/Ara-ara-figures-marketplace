class Purchased::FiguresController < ApplicationController
  def index
    @orders = Order.all.select { |order| order.buyer == current_user }
    # @favorite_figures =
    @reviewed_products = Review.all.select { |review| review.reviewer == current_user }
    @unreviewed_products = @orders.select { |order| order.reviews.empty? }
  end
end
