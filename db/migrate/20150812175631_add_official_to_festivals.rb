class AddOfficialToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :official, :string
  end
end
