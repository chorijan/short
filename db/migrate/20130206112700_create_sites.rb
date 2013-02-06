class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :uuid
      t.string :domain

      t.timestamps
    end
  end
end
