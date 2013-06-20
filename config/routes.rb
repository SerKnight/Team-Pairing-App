PeoplePerson::Application.routes.draw do
  resources :teams

  resources :members
  root :to => "members#index"
end
