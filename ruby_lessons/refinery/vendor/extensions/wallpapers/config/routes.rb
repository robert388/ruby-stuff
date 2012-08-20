Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :wallpapers do
    resources :wallpapers, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :wallpapers, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :wallpapers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
