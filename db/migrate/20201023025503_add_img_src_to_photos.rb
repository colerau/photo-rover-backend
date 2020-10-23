class AddImgSrcToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :img_src, :string
  end
end
