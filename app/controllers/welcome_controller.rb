class WelcomeController < ApplicationController
  unloadable
 
  before_filter :forward_if_single, :only => :index

  def forward_if_single
    @projects = Project.latest User.current

    if @projects.length == 1
      redirect_to(:controller => "projects", :action => "show", :id => @projects.first)
      return false
    end
  end
end
