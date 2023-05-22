class SeekersController < ApplicationController
  def index
    seekers = Seeker.all
    render json: seekers
  end

  def create
    seeker = Seeker.create(seeker_params)
    render json: seeker
  end

  def show
    seeker = Seeker.find(params[:id])
    render json: seeker
  end

  def destroy
    seeker = Seeker.find(params[:id])
    seeker.destroy
    render json: { message: "Record deleted" }
  end

  private

  def seeker_params
    params.permit(:username, :password_digest, :email)
  end
end
