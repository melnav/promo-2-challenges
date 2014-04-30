class AddColumnIdToPost < ActiveRecord::Migration
  def up
    add_column :posts, :user_id, :integer #nom de la table puis nom de colonne puis type
  end
    #TODO: your code here to create the Posts table
end