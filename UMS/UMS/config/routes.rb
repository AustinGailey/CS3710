Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :students do
    collection do
      get 'search'
    end
  end

  resources :sections do
    collection do
      get 'search'
    end
  end

  resources :semesters do
    collection do
      get 'search'
    end
  end

  resources :courses do
    collection do
      get 'search'
    end
  end

  resources :departments do
    collection do
      get 'search'
    end
  end

  resources :professors do
    collection do
      get 'search'
    end
  end

  root to: "welcome#index"
end
