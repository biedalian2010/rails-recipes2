class Admin::CategoriesController < ApplicationController
  layout "admin"

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category.new(category.params)
    if @category.save
      redirect_to admin_catagorys_path
    else
      render :new
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category.params)
      redirect_to admin_catagorys_path
    end
      render :edit
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_catagorys_path, warning: "你已删除这个分类"

  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
