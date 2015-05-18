Rails.application.routes.draw do

  root :to => 'application#index'

  get '/alteration', :to => 'application#alteration', :as => 'alteration'
  get '/generation', :to => 'application#generation', :as => 'generation'
  get '/instantfun', :to => 'application#instantfun', :as => 'instantfun'

  resources :sounds

end
