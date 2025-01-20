Rails.application.routes.draw do
  devise_for :users, controllers: {
  registrations: 'users/registrations'
}
  resources :posts
  root "posts#index"
  get :my_posts, to: 'posts#my_posts'
end
