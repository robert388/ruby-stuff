module Refinery
  module Wallpapers
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Wallpapers

      engine_name :refinery_wallpapers

      initializer "register refinerycms_wallpapers plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "wallpapers"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.wallpapers_admin_wallpapers_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/wallpapers/wallpaper'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Wallpapers)
      end
    end
  end
end
