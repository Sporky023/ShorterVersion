# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def vote_up_path(summary)
    {:controller => "summary_votes", :action => "create", }
  end



end
