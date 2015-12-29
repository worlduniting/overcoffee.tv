class AddPublishedDateToShows < ActiveRecord::Migration
  def change
    add_column :shows, :published_date, :datetime
  end
end
