Rails.application.routes.draw do


  get 'logout/logout'

  get 'user_th/update'

  get 'user_edit/do'

  get 'admin_user/do'

  get 'login_id/do'

  get 'edit_th/do'

  get 'newregist/do'

  get 'newedit/do'

  get 'edit/do'

  get 'samplepage/do'

  get 'complete/do'

  get 'admin/do'

  get 'entry/do'

  get 'area/do'

  get 'mypage/do'

  get 'login/do'

  get 'search/do'

  get 'job/do'

  get 'top/do'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
get 'top' => 'top#do'
get 'job/:id' => 'job#do'
get 'search' => 'search#do'
get 'login' => 'login#do'
get 'mypage' => 'mypage#do'
get 'admin' => 'admin#do'
get 'entry' => 'entry#entry'
get 'complete' => 'complete#do'
post 'samplepage' => 'samplepage#do'
get 'edit' => 'edit#do'
get 'newedit' => 'newedit#do'
get 'newregist' => 'newregist#regist'
post'samplepage1' => 'samplepage#regist'
post 'edit_th' => 'edit_th#update'
get 'job_destroy' => 'edit_th#job_destroy'
get 'login_id' => 'login_id#do'
get 'jobap' => 'job#create'
get 'admin_user' => 'user_edit#user_edit'
get 'admin_user_user' => 'admin_user#do'
post 'user_edit' => 'user_th#update'
post 'user_th' => 'user_th#update'
get 'user_destroy' => 'user_th#user_destroy'
get 'logout' => 'logout#logout'

#URL名 => comtroller名#アクション名

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
