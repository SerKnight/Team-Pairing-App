PeoplePerson::Application.routes.draw do
  resources :teams do
    resources :pairs, :only => [:create, :show]
  end

  resources :members
  root :to => "teams#index"
end
