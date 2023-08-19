class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(name: params[:doctor][:nmae])
    if @doctor.save
      redirect_to root_path
    else
      render :new
    end
  end
end
