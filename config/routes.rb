Rails.application.routes.draw do

  devise_for :users
  root 'subject#index'

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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
