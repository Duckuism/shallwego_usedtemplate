Rails.application.routes.draw do


  devise_for :users

  root 'welcome#index'
  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash



  # conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

  ## 가져온 템플릿 정상 작동 확인을 위해 주소창에서 조회하기 위해 만든 routes.
  ## 백엔드 개발시에는 다 삭제하고 resource로 restful하게 만들어주세용.

  get 'home/index'

  get 'home/login_register'


  get 'support/new'

  get 'support/create'

  get 'support/index'

  get 'support/show'

  get 'support/edit'

  get 'support/update'

  get 'support/delete'


  get 'course/new'

  get 'course/create'

  get 'course/index'

  get 'course/show'

  get 'course/edit'

  get 'course/update'

  get 'course/delete'



  get 'local/new'

  get 'local/create'

  get 'local/index'

  get 'local/show'

  get 'local/edit'

  get 'local/update'

  get 'local/delete'


  get 'foreigner/new'

  get 'foreigner/create'

  get 'foreigner/index'

  get 'foreigner/show'

  get 'foreigner/edit'

  get 'foreigner/update'

  get 'foreigner/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "home#index"

  resource :course

  resource :foreigner

  resource :local

end
