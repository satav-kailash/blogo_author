class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(name: params[:book][:name])
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end
end
