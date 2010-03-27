ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => "documents"
  
  map.resources :summaries

  map.resources :documents, :has_many => :summaries

  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
