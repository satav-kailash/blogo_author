class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(name: params[:author][:name])
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  def show
    @author = Author.find(params[:id])
  end
end

