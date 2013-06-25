PeoplePerson::Application.routes.draw do
  resources :teams
  resources :pairs, :only => [:new, :index, :show]
  resources :members
  root :to => "members#index"
end
