# This migration comes from refinery_newsarticles (originally 1)
class CreateNewsarticlesNewsarticles < ActiveRecord::Migration

  def up
    create_table :refinery_newsarticles do |t|
      t.string :title
      t.string :description
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-newsarticles"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/newsarticles/newsarticles"})
    end

    drop_table :refinery_newsarticles

  end

end
