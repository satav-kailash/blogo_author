class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    #debugger
    #age = params[:age]
    @profile = Profile.new(profile_params)
    #debugger
    if @profile.save
      redirect_to @profile
    else
      render :new
    end
  end

  def search
    @search = params[:search]
  end

  def show
    @profile = Profile.find(params[:id])
  end

  private 

  def profile_params
    params.require(:profile).permit(:name, :married, :city, :dob, :gender, skills:[]) 
  end
end
