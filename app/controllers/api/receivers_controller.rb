class Api::ReceiversController < ApplicationController
  before_action :authenticate_donor
  
  def index
    @receivers = Receiver.all
    render "index.json.jb"
  end

  def create
    @receiver = Receiver.new(
      receiver_name: params[:receiver_name]
    )
    @receiver.save
    render "show.json.jb"
  end

  def show
    @receiver = Receiver.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @receiver = Receiver.find_by(id: params[:id])
    @receiver.receiver_name = params[:item_name] || @receiver.receiver_name
    @receiver.save
    render "show.json.jb"
  end

  def destroy
    receiver = Receiver.find_by(id: params[:id])
    receiver.destroy
    render json: {message: "Category successfully destroyed."}
  end
end