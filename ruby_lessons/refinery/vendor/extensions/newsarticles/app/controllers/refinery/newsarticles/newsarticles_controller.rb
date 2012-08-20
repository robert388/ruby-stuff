module Refinery
  module Newsarticles
    class NewsarticlesController < ::ApplicationController

      before_filter :find_all_newsarticles
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @newsarticle in the line below:
        present(@page)
      end

      def show
        @newsarticle = Newsarticle.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @newsarticle in the line below:
        present(@page)
      end

    protected

      def find_all_newsarticles
        @newsarticles = Newsarticle.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/newsarticles").first
      end

    end
  end
end
