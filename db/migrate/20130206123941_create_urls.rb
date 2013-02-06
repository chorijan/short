class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.integer :site_id
      t.string :long
      t.string :short

      t.timestamps
    end
  end
end
