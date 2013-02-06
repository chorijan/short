class RenameLongToLongUrlOnUrls < ActiveRecord::Migration
  def up
  	rename_column :urls, :long, :long_url
  end

  def down
  	rename_column :urls, :long_url, :long
  end
end