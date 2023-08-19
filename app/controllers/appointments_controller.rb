class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    if @appointment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :doctor_id, :patient_id)
  end
end
