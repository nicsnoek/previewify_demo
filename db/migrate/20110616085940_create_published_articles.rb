class CreatePublishedArticles < ActiveRecord::Migration
  def self.up
    Article.create_published_versions_table
  end

  def self.down
    Article.drop_published_versions_table
  end
end
