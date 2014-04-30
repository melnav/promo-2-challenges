class AddColumnRatingToUser < ActiveRecord::Migration
  def up
    add_column :posts, :rating, :integer #nom de la table puis nom de colonne puis type
  end
    #TODO: your code here to create the Posts table
end