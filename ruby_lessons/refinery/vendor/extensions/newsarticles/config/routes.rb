Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :newsarticles do
    resources :newsarticles, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :newsarticles, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :newsarticles, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
