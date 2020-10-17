class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.integer :nasa_photo_id
      t.integer :user_id

      t.timestamps
    end
  end
end
