class Api::DonorsController < ApplicationController
  def index
    @donors = Donor.all
    render "index.json.jb"
  end

  def create
    donor = Donor.new(
      email: params[:email],
      donor_name: params[:donor_name],
      donor_surname: params[:donor_surname],
      image: params[:image],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if donor.save
      render json: { message: "Donor created successfully" }, status: :created
    else
      render json: { errors: donor.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @donor = Donor.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @donor = Donor.find_by(id: params[:id])
    @donor.email = params[:email] || @donor.email
    @donor.donor_name = params[:donor_name] || @donor.donor_name
    @donor.donor_surname = params[:donor_surname] || @donor.donor_surname
    @donor.image = params[:image] || @donor.image
    @donor.save
    render "show.json.jb"
  end

  def destroy
    donor = Donor.find_by(id: params[:id])
    donor.destroy
    render json: {message: "Donor successfully destroyed."}
  end
end