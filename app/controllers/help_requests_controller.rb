class HelpRequestsController < ApplicationController
  def new
    @help_request = HelpRequest.new
    
  end
  def show
    
  end

  def create
    @help_request = HelpRequest.create(params[:help_request])
    redirect_to :back
  end

  def destroy
    
  end
end
