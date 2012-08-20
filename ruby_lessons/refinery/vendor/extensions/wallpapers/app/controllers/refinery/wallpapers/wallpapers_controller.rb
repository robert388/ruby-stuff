module Refinery
  module Wallpapers
    class WallpapersController < ::ApplicationController

      before_filter :find_all_wallpapers
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @wallpaper in the line below:
        present(@page)
      end

      def show
        @wallpaper = Wallpaper.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @wallpaper in the line below:
        present(@page)
      end

    protected

      def find_all_wallpapers
        @wallpapers = Wallpaper.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/wallpapers").first
      end

    end
  end
end
