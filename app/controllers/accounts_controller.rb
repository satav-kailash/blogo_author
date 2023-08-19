class AccountsController < ApplicationController
  def new
    @author = Author.find(params[:author_id])
    @account = @author.build_account
    debugger
  end

  def create
    @author = Author.find(params[:author_id])
    @account = @author.create_account(bank_name: params[:account][:bank_name])
    if @account.save
      redirect_to root_path
    else
      render :new
    end
  end

end
