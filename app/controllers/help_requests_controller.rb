class HelpRequestsController < ApplicationController
  respond_to :js, :html
  def new
    @help_request = HelpRequest.new
    @help_requests = HelpRequest.all
  end
  def show
    
  end

  def create
    @help_request = HelpRequest.create(params[:help_request])
    @help_request.users << current_user
  end

  def destroy
    HelpRequest.destroy(params[:id])
    @help_requests = HelpRequest.all
  end
end
