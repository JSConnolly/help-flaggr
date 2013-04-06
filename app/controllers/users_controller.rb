class UsersController < ApplicationController
  respond_to :js, :html

  def new
    @user = session[:user_id] ? User.find(session[:user_id]) : User.new
  end

  def create
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = User.find_by_email(params[:user][:email])
      unless @user
        @user = User.create(params[:user])
      else
        @user.phase = params[:user][:phase]
        @user.save

      end
      session[:user_id] = @user.id
    end
      @help_requests = HelpRequest.where(complete: false)

  end

  def destroy
    session.clear
    @user = User.new
  end
end
