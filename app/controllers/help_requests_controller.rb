class HelpRequestsController < ApplicationController
  respond_to :js, :html
  def new
    @help_request = HelpRequest.new
    @help_requests = HelpRequest.where("complete = ?", false).sort {|a,b| b.created_at <=> a.created_at}
  end
  def show
    
  end

  def create
    @help_request = HelpRequest.create(params[:help_request])
    @help_request.users << current_user

    @tags = Tag.parse_tags(params[:tag_content], @help_request.id)
    @tags.each do |t|
      @help_request.tags << t
    end
  end

  def destroy
    HelpRequest.destroy(params[:id])
    @help_requests = HelpRequest.all
  end

  def update
    @help_request = HelpRequest.find(params[:id])
    @help_request.update_attributes(:complete => true)
    render :json => ""
  end

  def user_update
    help_request = HelpRequest.find(params[:id])
    help_request.update_attributes(:complete => true)
    @help_requests = HelpRequest.all
  end

  def fetch_length
    HelpRequest.all.length
  end

  # def fetch_last
  #   { render_text "htmlcodeinhere" }
  # end

  def fetch_latest
    HelpRequest.last
  end
end
