class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.integer :url_id
      t.string :referrer
      t.string :user_agent
      t.string :ip_address

      t.timestamps
    end
  end
end
