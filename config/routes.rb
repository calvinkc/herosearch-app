Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :heroes



#    Prefix Verb   URI Pattern                Controller#Action
#    heroes GET    /heroes(.:format)          heroes#index
#           POST   /heroes(.:format)          heroes#create
#  new_hero GET    /heroes/new(.:format)      heroes#new
# edit_hero GET    /heroes/:id/edit(.:format) heroes#edit
#      hero GET    /heroes/:id(.:format)      heroes#show
#           PATCH  /heroes/:id(.:format)      heroes#update
#           PUT    /heroes/:id(.:format)      heroes#update
#           DELETE /heroes/:id(.:format)      heroes#destroy

end
