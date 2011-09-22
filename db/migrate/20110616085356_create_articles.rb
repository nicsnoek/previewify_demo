class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.integer :location_id
      t.string :title
      t.string :body_text

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
