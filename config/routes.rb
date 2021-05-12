Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [ :new, :create ]
  end

  resources :reviews, only: [:edit, :update, :destroy]

# Prefix Verb           URI Pattern                                              Controller#Action
#               root    GET    /                                                 restaurants#index
# restaurant_reviews    POST   /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
# restaurants           GET    /restaurants(.:format)                            restaurants#index
#                       POST   /restaurants(.:format)                            restaurants#create
#        new_restaurant GET    /restaurants/new(.:format)                        restaurants#new
#            restaurant GET    /restaurants/:id(.:format)                        restaurants#show
#           edit_review GET    /reviews/:id/edit(.:format)                       reviews#edit
#                review PATCH  /reviews/:id(.:format)                            reviews#update
#                       PUT    /reviews/:id(.:format)                            reviews#update
#                       DELETE /reviews/:id(.:format)                            reviews#destroy

end
