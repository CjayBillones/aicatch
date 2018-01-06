class CreateCapturedViolators < ActiveRecord::Migration[5.0]
  def change
    create_table :captured_violators do |t|
      t.string :license_plate_text
      
      t.timestamps
    end
  end
end
