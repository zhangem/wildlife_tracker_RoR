WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'sightings#index'})
  match('/sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings', {:via => :post, :to => 'sightings#create'})
  match('sightings/new', {:via => :get, :to => 'sightings#new'})
  match('sightings/:id', {:via => :get, :to => 'sightings#show'})
  match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('sightings/:id/edit', {:via => [:patch, :put], :to => 'sightings#update'})
  match('sightings/:id/edit', {:via => :delete, :to => 'sightings#destroy'})

  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species/:id', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})
end
