# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  
  
  def vote_up_path(summary)
    {:controller => "summary_votes", :action => "create", }
  end


  def facebook_share_button
    #'<a name="fb_share" type="button_count" href="http://www.facebook.com/sharer.php">Share</a><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>'
    '<a name="fb_share" type="icon_link" href="http://www.facebook.com/sharer.php">Share</a><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>'
  end
  
  def options_for_summary_type_of_subset
    [['the whole document', 'full document'], ['only a part of the document', 'specific pages']]
  end

  def textformat(string)
    #return string
    output = ""

    output << "<p>" << string << "</p>"
    return output
    output = output.gsub("\n\n", "</p><p>")
    output = output.gsub("\t", "")
  end


end
