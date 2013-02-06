class AddOldClicksToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :old_clicks, :integer
  end
end
