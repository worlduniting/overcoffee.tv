 class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.string :description
      t.string :guest
      t.string :source

      t.timestamps null: false
    end
  end
end
