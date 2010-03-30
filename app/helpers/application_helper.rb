# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def vote_up_path(summary)
    {:controller => "summary_votes", :action => "create", }
  end


  def facebook_share_button
    '<a name="fb_share" type="button_count" href="http://www.facebook.com/sharer.php">Share</a><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>'
  end


end
