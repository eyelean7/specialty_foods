class ReviewsController < ApplicationController
  before_action :find_product

  def new
    @review = @product.reviews.new
  end

  def create
    if @product.reviews.create(review_params)
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@product)
  end

private

  def review_params
    params.require(:review).permit(:author, :content_body, :rating)
  end

  def find_product
    @product = Product.find(params[:product_id])
  end
end
