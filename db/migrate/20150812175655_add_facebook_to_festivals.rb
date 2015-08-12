class AddFacebookToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :facebook, :string
  end
end
