class SeekersController < ApplicationController
  def index
    seekers = Seeker.all
    render json: seekers
  end

  def create
    seeker = Seeker.new(seeker_params)
    if seeker.save
      render json: { id: seeker.id }
    else
      render json: { errors: seeker.errors.full_messages }, status: :unprocessable_entity
    end
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
    params.require(:seekers).permit(:username, :password, :password_confirmation, :email)
  end

end
