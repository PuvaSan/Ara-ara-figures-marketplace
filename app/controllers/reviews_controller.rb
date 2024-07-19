class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @order = Order.find(params[:order_id])
  end

  def create
    @order = Order.find(params[:order_id])
    @review = Review.new(review_params)
    @review.order = @order
    @review.reviewer = current_user
    @review.reviewee = @order.figure.user
    if @review.save
      redirect_to user_path(@order.figure.user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
