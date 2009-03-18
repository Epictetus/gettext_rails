ActionController::Routing::Routes.draw do |map|
#  map.resources :articles

  map.resources :articles, :collection => {:multi_error_messages_for => :get,
                                           :change_title_error_messages_for => :get}

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  map.connect ':controller/:action'
end
