module Refinery
  module Wallpapers
    module Admin
      class WallpapersController < ::Refinery::AdminController

        crudify :'refinery/wallpapers/wallpaper', :xhr_paging => true

      end
    end
  end
end
