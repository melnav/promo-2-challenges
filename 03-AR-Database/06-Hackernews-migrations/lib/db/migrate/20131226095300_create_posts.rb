class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string    :name
      t.string    :source_url
      t.datetime  :date
    end
  end
    #TODO: your code here to create the Posts table
end