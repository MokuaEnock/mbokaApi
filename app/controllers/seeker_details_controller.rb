class SeekerDetailsController < ApplicationController
  def index
    seekers = SeekerDetail.all
    render json: seekers
  end

  def create
    disp = SeekerDetail.create(seeker_details_params)
    render json: disp
  end

  def show
    disp = SeekerDetail.find(params[:id])
    render json: disp
  end

  def destroy
    disp = SeekerDetail.find(params[:id])
    disp.destroy
    render json: { message: "Record deleted" }
  end

  private

  def seeker_details_params
    params.permit(:seeker_id, :first_name, :second_name, :third_name, :phone_number, :dob, :gender, :nationality, :country)
  end
end
