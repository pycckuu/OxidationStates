OxidationStates::Application.routes.draw do
  resources :oxidation_states

  root :to => 'visitors#index'
end
