ActionController::Routing::Routes.draw do |map|
  map.devise_for :users

  
  map.resources :summary_votes

  
  map.root :controller => "documents"
  
  map.resources :summaries, :has_many => :summary_votes

  map.resources :documents, :has_many => :summaries

  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
