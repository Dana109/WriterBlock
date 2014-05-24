class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :content
      t.string :published_on
      t.string :user

      t.timestamps
    end
  end
end
