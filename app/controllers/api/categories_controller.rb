class Api::CategoriesController < ApplicationController
  before_action :authenticate_donor
  
  def index
    @categories = Category.all
    render "index.json.jb"
  end

  def create
    @category = Category.new(
      category_type: params[:category_type]
    )
    @category.save
    render "show.json.jb"
  end

  def show
    @category = Category.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.category_type = params[:item_name] || @category.category_type
    @category.save
    render "show.json.jb"
  end

  def destroy
    category = Category.find_by(id: params[:id])
    category.destroy
    render json: {message: "Category successfully destroyed."}
  end
end
