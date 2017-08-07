Rails.application.routes.draw do


  devise_for :users

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

  get 'home/foreigner_detail'

  get 'home/login_register'

  get 'home/index'


  get 'support/faq_new'

  get 'support/support_index'

  get 'support/faq_detail'

  get 'support/faq_list'

  get 'support/faq_edit'

  get 'support/update'

  get 'support/delete'


  get 'course/course_new'

  get 'course/foreigner_hangout_concept'
  post 'course/create'

  get 'course/course_edit'
  get 'course/index/:id' => 'course#index'

  get 'course/show'

  get 'course/edit'

  get 'course/update'

  get 'course/delete'

  get 'course/course_list'

  get 'course/course_detail'


  get 'local/faq_new'

  get 'local/foreigner_hangout_concept'

  get 'local/local_detail'

  get 'local/local_list'

  get 'local/course_edit'

  get 'local/update'

  get 'local/delete'


  get 'foreigner/faq_new'

  get 'foreigner/foreigner_hangout_concept'

  get 'foreigner/foreigner_detail'

  get 'foreigner/foreigner_list'

  get 'foreigner/course_edit'

  get 'foreigner/update'

  get 'foreigner/delete'

  get 'foreigner/foreigner_list'

  get 'foreigner/foreigner_detail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resource :course

  resource :foreigner

  resource :local


end
