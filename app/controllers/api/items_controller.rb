class Api::ItemsController < ApplicationController
  def index
    @items = Item.all
    render "index.json.jb"
  end

  def create
    @item = Item.new(
      name: params[:item_name],
      quantity: params[:quantity],
      condition: params[:condition],
      category: params[:category_id],
      donor: params[:donor_id]
    )
    @item.save
    render "show.json.jb"
  end

  def show
    @item = Item.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.item_name = params[:item_name] || @item.item_name
    @item.quantity = params[:quantity] || @item.quantity
    @item.condition = params[:condition] || @item.condition
    @item.category_id = params[:category_id] || @item.category_id
    @item.donor_id = params[:donor_id] || @item.donor_id
    @item.save
    render "show.json.jb"
  end

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
    render json: {message: "Item successfully destroyed."}
  end
end
