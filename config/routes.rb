Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  scope :api do
    scope :v1 do
      resources :pins, except: [:new]
    end
  end
end
