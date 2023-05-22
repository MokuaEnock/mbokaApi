class SeekersController < ApplicationController

  def index
    seekers = Seeker.all
    render json: seekers
  end


  def create
    disp = Seeker.create(dis_params)
    render json: disp
  end

  def show
    disp = Seeker.find(params[:id])
    render json: disp
  end

  def destroy
    disp = Seeker.find(params[:id])
    disp.destroy
    render json: { message: "Record deleted" }
  end

  private

  def seeker_params
    params.permit(:username, :password_digest, :email)
  end

end
