class ProfilesController < ApplicationController
  def index
    profiles = Profile.includes({cities: :state}, :schools, :companies).all
    render json: profiles, include: [:cities, :schools, :companies]
  end

  def show

  end
end