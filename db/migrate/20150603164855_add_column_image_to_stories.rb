class AddColumnImageToStories < ActiveRecord::Migration
  def change
    add_column :stories, :headerimg, :string
  end
end
