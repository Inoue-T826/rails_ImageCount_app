Rails.application.routes.draw do
  root 'pages#start'            # スタート画面
  get 'page/:id', to: 'pages#show', as: 'page' # 動的な画像ページ
  get 'admin', to: 'pages#admin' # 管理者画面
  post 'complete_trial', to: 'trials#create'  # 試行完了時に呼び出されるルート

    # クリック情報を保存するためのルート
  resources :clicks, only: [:create]  # POST /clicks を処理
end
