class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :place
      t.string :bio
      t.string :user
      t.date :published_on

      t.timestamps
    end
  end
end
