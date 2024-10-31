Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
     #メニュー一覧【腕】
      get 'training_arms_modal'
      patch 'update_arms_modal'
      #メニュー一覧【腹筋】
      get 'training_abs_modal'
      patch 'update_abs_modal'
      #メニュー一覧【背中】
      get 'training_back_modal'
      patch 'update_back_modal'
      #メニュー一覧【胸】
      get 'training_chest_modal'
      patch 'update_chest_modal'
      #メニュー一覧【肩】
      get 'training_shoulder_modal'
      patch 'update_shoulder_modal' 
      #メニュー一覧【太もも】
      get 'training_thighs_modal'
      patch 'update_thighs_modal'
       

     #筋トレ部位ページ
      get 'muscle_parts_page' 

     #【腹筋】トレーニング種目一覧ページ
      get 'training_abs'
      get 'training_chest'
      get 'training_arms'
      get 'training_thighs'
      get 'training_shoulder'
      get 'training_back'

    end
  end
end
