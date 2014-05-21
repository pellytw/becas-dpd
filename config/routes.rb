Mysecurity::Application.routes.draw do

  scope '/soft/becas-dpd' do
 
  resources :institucion_oferentes

  get "cursos/cursos_disponibles", to: 'cursos#cursos_disponibles'

  get "cursos/inscriptos", to: 'cursos#inscriptos'

  get "personas/existe_persona", to: 'personas#existe_persona'

  get "personas/alta_curso", to: "personas#alta_curso"

  match 'cursos/finalizar_curso/' => 'cursos#finalizar_curso' 
  match 'cursos/finalizar_curso/:idCurso' => 'cursos#finalizar_curso'

  match 'cursos/setear_disponibilidad/' => 'cursos#setear_disponibilidad' 
  match 'cursos/setear_disponibilidad/:idCurso' => 'cursos#setear_disponibilidad'

  match 'personas/becar/:idPersona/:idCurso' => 'personas#becar'

  resources :cursos

  resources :personas

  resources :escuelas

  resources :localidads

  resources :regions

  resources :tipo_documentos

  resources :situacion_revista

  resources :titulos

  resources :role_permissions

    devise_for :users, :path => 'user'

    resources :roles
    resources :users
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  #
  #

  root :to => "cursos#cursos_disponibles"
  end
end
