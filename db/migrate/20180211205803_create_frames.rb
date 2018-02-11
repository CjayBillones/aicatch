class CreateFrames < ActiveRecord::Migration[5.0]
  def change
    create_table :frames do |t|
      t.string :image_filename

      t.timestamps
    end
  end
end
