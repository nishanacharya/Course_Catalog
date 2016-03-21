Rails.application.routes.draw do

  get 'result/index'

  get 'enrollment/index'

  get 'enrollment/new'

  get 'enrollment/edit'

  post 'enrollment/create'

  get 'enrollment/update'

  get 'enrollment/destroy'

  devise_for :users
  root 'home#index'

  get 'subject/index'

  get 'subject/new'

  get 'subject/edit'

  get 'subject/create'

  get 'subject/update'

  get 'subject/destroy'

  get 'course/index'

  get 'course/new'

  get 'course/edit'

  get 'course/create'

  get 'course/update'

  get 'course/destroy'

  get 'instructor/index'

  get 'instructor/new'

  get 'instructor/edit'

  get 'instructor/create'

  get 'instructor/update'

  get 'instructor/destroy'

  get 'home/index'

  get 'search/index'

  get 'search/new'

  get 'search/edit'

  get 'search/create'

  get 'search/update'

  get 'search/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
