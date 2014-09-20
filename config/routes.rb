Rails.application.routes.draw do

    namespace :api do
        get 'github/search', to: 'github#search'
        get 'github/:author/:repo', to: 'github#show'
        get 'github/tree/:author/:repo/:sha', to: 'github#tree'
    end

    get '*path', to: 'home#index'
    root to: 'home#index'

end
