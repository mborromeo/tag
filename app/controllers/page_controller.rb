class PageController < ApplicationController

  def index
    @projects = Project.find(:all, :order => 'created_at DESC', :limit => 5)
    render :layout => 'application'
  end

end
