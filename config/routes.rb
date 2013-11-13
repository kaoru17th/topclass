Topclass::Application.routes.draw do

  get "semesters/new"
  get "semesters/index"
  get "semesters/show"

resources :users
resources :preregister_subjects
resources :sessions, only: [:new, :create, :destroy]
  
root  'static_pages#home'
match '/newuser',  to: 'users#new',  via: 'get'
match '/help', to: 'static_pages#help', via: 'get'
match '/about',   to: 'static_pages#about',   via: 'get'
match '/signin',  to: 'sessions#new',         via: 'get'
match '/signout', to: 'sessions#destroy',     via: 'delete'

#Simulación nuevo semestre
  match '/new_semester', to: 'new_semester#index', via: 'get'
  match '/new_semester_with_classes', to: 'new_semester#users_in_subject_rule', via: 'get'
#Dashboard
  match '/dashboard', to: 'dashboard#show', via: 'get'
  match '/dashboard_charts', to:'dashboard#load_charts', via: 'get' 
  match '/dashboard_notifications', to:'dashboard#notifications', via: 'get' 

  
#Forecast
  match '/forecast', to: 'forecasts#index', via: 'get'  
  match '/forecast_scenario', to: 'forecasts#show', via: 'get'  


  #CRUD subjects
resources :subjects
  match '/new_subject',  to: 'subjects#new',  via: 'get'
  match '/list_subject',  to: 'subjects#index',  via: 'get'
  match '/disable', to: 'subjects#disable', :as => 'disable', via: 'get'
  match '/list_student_by', to: 'subjects#showStudentList#:id', via: 'get'
  match '/showStudentList', to: 'subjects#showStudentList', via: 'get'
  match '/config_quota_by', to: 'subjects#goQuotaConfig#:id', via: 'get'
  match '/createQuota', to: 'subjects#createQuota', via: 'post'
  match '/searchStudentList', to: 'subjects#searchStudentList', via: 'get'
  
 
# CRUD programs
  resources :programs
  match '/list_registered', to: 'programs#showSubjectList#id', via: 'get'
  match '/list_program',  to: 'programs#index',  via: 'get'
  
# Teacher subject
  resources :teacher_subjects
  match '/new_teachersubjects',  to: 'teacher_subjects#new',  via: 'get'
  match '/list_teacher_subjects',  to: 'teacher_subjects#index',  via: 'get'
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
