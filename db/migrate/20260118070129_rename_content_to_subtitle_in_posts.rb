class RenameContentToSubtitleInPosts < ActiveRecord::Migration[7.1]
  def change
    rename_column :posts, :content, :subtitle
  end
end
