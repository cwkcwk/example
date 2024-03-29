Skyline::Application.routes.draw do

  resources :sliders

  root to: 'welcome#index'

  devise_for :users, path: 'auth'

  resources :catalogs do
    collection do
      get 'goods/:category_name', action: :items, as: 'goods'
      get 'goods/:category_name/:link', action: :good, as: 'item'
      get 'search', action: :search
      get 'autocomplete', action: :autocomplete
    end
  end

  resources :productions do
    collection do
      get '/:link', action: :article, as: 'article'
    end

  end

  get 'logistics', action: :logistics, controller: :welcome
  get 'contacts', action: :contacts, controller: :welcome
  get 'about', action: :about, controller: :welcome

  namespace :prv do

    root to: 'root#index'

    resources :site_infos do
      collection do
        get 'info', action: :info
      end
    end
    resources :sliders
    resources :articles
    resources :categories do
      member do
        get :order_position, action: :order_position
      end
    end
    resources :items do
      member do
        get 'change_order', action: :change_order
      end
    end
  end

end
