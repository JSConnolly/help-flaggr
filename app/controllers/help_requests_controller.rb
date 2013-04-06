class HelpRequestsController < ApplicationController
  def new
    @help_request = HelpRequest.new
    
  end
  def show
    
  end

  def create
    @help_request = HelpRequest.create(params[:help_request])
    @help_request.users << current_user
  end

  def destroy
    
  end
end
