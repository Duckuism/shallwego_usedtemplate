Rails.application.routes.draw do

  ## 가져온 템플릿 정상 작동 확인을 위해 주소창에서 조회하기 위해 만든 routes.
  ## 백엔드 개발시에는 다 삭제하고 resource로 restful하게 만들어주세용.

  get 'home/foreigner_detail'

  get 'home/login_register'


  get 'support/faq_new'

  get 'support/support_index'

  get 'support/faq_detail'

  get 'support/faq_list'

  get 'support/faq_edit'

  get 'support/update'

  get 'support/delete'


  get 'course/course_new'

  get 'course/create'

  get 'course/course_edit'

  get 'course/update'

  get 'course/delete'

  get 'course/course_list'

  get 'course/course_detail'


  get 'local/faq_new'

  get 'local/create'

  get 'local/local_detail'

  get 'local/local_list'

  get 'local/course_edit'

  get 'local/update'

  get 'local/delete'


  get 'foreigner/faq_new'

  get 'foreigner/create'

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
