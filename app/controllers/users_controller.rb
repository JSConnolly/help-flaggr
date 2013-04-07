class UsersController < ApplicationController
  respond_to :js, :html

  def new
    if current_user
      @user = current_user
      @help_requests = HelpRequest.where(complete: false)
      redirect_to new_help_request_path
    else
      @user = User.new
    end

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
    current_user
    session.clear
    @user = User.new

  end
end
