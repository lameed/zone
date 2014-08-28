class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :number
      t.string :title
      t.string :artist
      t.string :category
      t.string :language

      t.timestamps
    end
  end
end
