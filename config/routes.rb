Rails.application.routes.draw do
  devise_for :players
  root to: 'home#index'

  get '/about' => 'home#about'
  get '/players' => 'players#index'
  get '/players/:username' => 'players#show'
end
