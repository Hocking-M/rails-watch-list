class AddCoverImageToList < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :cover_image, :string
  end
end
