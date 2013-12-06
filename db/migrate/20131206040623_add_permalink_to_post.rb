# app/models/post.rb
class AddPermalinkToPost < ActiveRecord::Migration
  def change
    add_column :posts,  :permalink,  :string, :default => "default URL"
  end
end
