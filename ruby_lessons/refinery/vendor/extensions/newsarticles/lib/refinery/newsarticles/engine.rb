module Refinery
  module Newsarticles
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Newsarticles

      engine_name :refinery_newsarticles

      initializer "register refinerycms_newsarticles plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "newsarticles"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.newsarticles_admin_newsarticles_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/newsarticles/newsarticle'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Newsarticles)
      end
    end
  end
end
