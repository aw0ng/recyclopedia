class Api::SessionsController < ApplicationController
  def create
    donor = Donor.find_by(email: params[:email])
    if donor && donor.authenticate(params[:password])
      jwt = JWT.encode(
        {
          donor_id: donor.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: donor.email, donor_id: donor.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
