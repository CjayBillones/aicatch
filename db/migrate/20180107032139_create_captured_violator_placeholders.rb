class CreateCapturedViolatorPlaceholders < ActiveRecord::Migration[5.0]
  def change
    create_table :captured_violator_placeholders do |t|
      t.string :capture_date
      t.string :license_plate_text
      t.string :car_image_filename
      t.string :license_plate_image_filename
      t.string :video_filename
      t.string :violation
      t.string :location
      t.boolean :encoded, default: false

      t.timestamps
    end
  end
end
