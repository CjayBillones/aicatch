class CreateCapturedViolators < ActiveRecord::Migration[5.0]
  def change
    create_table :captured_violators do |t|
      t.datetime :capture_date
      t.string :raw_image
      t.string :license_plate_image
      t.string :violation
      t.string :location
      t.string :penalty_amount
      t.timestamps
    end
  end
end
