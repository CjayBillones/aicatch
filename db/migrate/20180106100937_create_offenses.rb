class CreateOffenses < ActiveRecord::Migration[5.0]
  def change
    create_table :offenses do |t|
      t.belongs_to :captured_violator, index: true
      t.belongs_to :violation, index: true

      t.datetime :capture_date
      t.string :car_image_filename
      t.string :license_plate_image_filename
      t.string :video_filename
      t.string :location
      t.string :penalty

      t.timestamps
    end
  end
end
