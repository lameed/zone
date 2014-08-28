class CreateLoveSongs < ActiveRecord::Migration
  def change
    create_table :love_songs do |t|
      t.string :number
      t.string :title
      t.string :artist
      t.string :type
      t.string :language

      t.timestamps
    end
  end
end
