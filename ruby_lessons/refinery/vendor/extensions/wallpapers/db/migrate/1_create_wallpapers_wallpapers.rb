class CreateWallpapersWallpapers < ActiveRecord::Migration

  def up
    create_table :refinery_wallpapers do |t|
      t.string :title
      t.string :description
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-wallpapers"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/wallpapers/wallpapers"})
    end

    drop_table :refinery_wallpapers

  end

end
