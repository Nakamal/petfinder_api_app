class Api::PetsController < ApplicationController
  def index

    response = HTTP.get("http://api.petfinder.com/pet.find?size=#{params[:subject]}&format=json&key=#{ ENV['PET_API_KEY'] }")
    render json: response.parse
  end  
end
