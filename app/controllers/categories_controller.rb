class CategoriesController < ApplicationController

  def index
    @categories = Category.all.order("created_at DESC")
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to category_path(@category)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def find_category
  end

  def category_params
    params.require(:category).permit(:title, :assessment_id)
  end


end
