class SeekerDetailsController < ApplicationController
  def index
    seekers = SeekerDetail.all
    render json: seekers
  end

  def create
    seeker = SeekerDetail.new(seeker_details_params)
    if params[:avatar]
      seeker.avatar.attach(params[:avatar])
      seeker.avatar.variant(resize: "300x300>").processed
    end
    if seeker.save
      render json: seeker
    else
      render json: { errors: seeker.errors.full_messages }, status: :unprocessable_entity
    end
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

  def update
    seeker = SeekerDetail.find(params[:id])
    if params[:avatar]
      seeker.avatar.attach(params[:avatar])
      seeker.avatar.variant(resize: "300x300>").processed
    end
    render json: { message: "Seeker updated successfully" }
  end

  private

  def seeker_details_params
    params.permit(:seeker_id, :first_name, :second_name, :third_name, :phone_number, :dob, :gender, :nationality, :country)
  end
end
