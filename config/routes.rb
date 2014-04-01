WildlifeTracker::Application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/new', {:via => :get, :to => 'species#new'})
end
