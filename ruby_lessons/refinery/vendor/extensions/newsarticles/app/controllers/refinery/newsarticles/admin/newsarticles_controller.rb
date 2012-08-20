module Refinery
  module Newsarticles
    module Admin
      class NewsarticlesController < ::Refinery::AdminController

        crudify :'refinery/newsarticles/newsarticle', :xhr_paging => true

      end
    end
  end
end
