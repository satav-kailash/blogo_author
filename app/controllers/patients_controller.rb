class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(name: params[:patient][:name])
    if @patient.save
      redirect_to root_path
    else
      render :new
    end
  end
end
