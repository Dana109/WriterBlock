class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :genre
      t.string :content
      t.date :published_on
      t.string :summary
      t.string :user

      t.timestamps
    end
  end
end
