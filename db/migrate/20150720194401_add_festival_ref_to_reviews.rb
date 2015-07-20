class AddFestivalRefToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :festival, index: true, foreign_key: true
  end
end
