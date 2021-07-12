class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to new_article_path, notice: 'Category is successfully created'
    else
      render :new, notice: 'Failed to create category'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
