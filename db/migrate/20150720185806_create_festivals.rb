class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :event
      t.string :address
      t.string :date
      t.string :pic
    end
  end
end
