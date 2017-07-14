Rails.application.routes.draw do
  get 'welcome/index'

  resources :reviews

  root 'welcome#index'

  get 'rankings' => 'rankings#index'
  get 'rankings/green' => 'rankings#green'
  get 'rankings/blue' => 'rankings#blue'
  get 'rankings/red' => 'rankings#red'

end
