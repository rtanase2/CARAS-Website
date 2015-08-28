Rails.application.routes.draw do
  root 'pages_controller#about_us_en'
  get 'about-us-en' => 'pages_controller#about_us_en'
  get 'meet-the-team-en' => 'pages_controller#meet_the_team_en'
  get 'events-en' => 'pages_controller#events_en'
  get 'gallery-en' => 'pages_controller#gallery_en'
  get 'contact-us-en' => 'pages_controller#contact_us_en'
  get 'donate-en' => 'pages_controller#donate_en'
  get '/volunteer-en' => 'pages_controller#volunteer_en'
  get 'tamale-fest-2015-en' => 'pages_controller#tamale_fest_2015_en'

  get 'about-us-es' => 'pages_controller#about_us_es'
  get 'meet-the-team-es' => 'pages_controller#meet_the_team_es'
  get 'events-es' => 'pages_controller#events_es'
  get 'gallery-es' => 'pages_controller#gallery_es'
  get 'contact-us-es' => 'pages_controller#contact_us_es'
  get 'donate-es' => 'pages_controller#donate_es'
  get 'volunteer-es' => 'pages_controller#volunteer_es'
  get 'tamale-fest-2015-es' => 'pages_controller#tamale_fest_2015_es'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
