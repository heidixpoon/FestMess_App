class AddSoundcloudToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :soundcloud, :string
  end
end
