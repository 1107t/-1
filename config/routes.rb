Rails.application.routes.draw do
  root 'static_pages#home'
  
  get '/signup', to: 'users#new'
  # ログイン機能
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # Google OAuth
  #get '/auth/:provider/callback', to: 'sessions#create'
  #post '/auth/:provider/callback', to: 'sessions#create'
  #get '/auth/failure', to: 'sessions#failure'
  
   # google
    #get '/auth/:provider/callback', to: 'sessions#create'
   post '/auth/:provider/callback', to: 'sessions#create'
   get 'auth/signout' => 'sessions#destroy'
   get 'auth/:provider/callback', to: 'sessions#create'
   get 'auth/failure', to: redirect('/')
   get 'log_out', to: 'sessions#destroy', as: 'log_out'

  


  resources :users do
    member do
      # ユーザー基本情報
      get 'edit_basic_info'
      patch 'update_basic_info'

      # マイページ関連
      get 'work_out'
      patch 'work_out'
      get 'workout_menu'
      
      # トレーニング部位選択ページ
      get 'muscle_parts_page'
      patch 'muscle_parts_page'

      # 部位別トレーニングページ
    
        # モーダル表示・更新
        get 'training_arms_modal'
        patch 'update_arms_modal'
        get 'training_abs_modal'
        patch 'update_abs_modal'
        get 'training_back_modal'
        patch 'update_back_modal'
        get 'training_chest_modal'
        patch 'update_chest_modal'
        get 'training_shoulder_modal'
        patch 'update_shoulder_modal'
        get 'training_thighs_modal'
        patch 'update_thighs_modal'

        # トレーニング一覧ページ
        get 'workout_menu'
        get 'training_abs'
        get 'training_chest'
        get 'training_arms'
        get 'training_thighs'
        get 'training_shoulder'
        get 'training_back'
      
    end
    resources :training_histories
  end
end