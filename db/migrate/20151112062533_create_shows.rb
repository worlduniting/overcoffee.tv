 class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string 	:title
      t.string 	:description
      t.string 	:guest_name
      t.string 	:youtubeID
      t.string 	:gender
      t.integer	:age
      t.string 	:zip
      t.string 	:current_religion
      t.string 	:religious_heritage

      t.timestamps null: false
    end
  end
end
