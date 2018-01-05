class AddOriginalImagePathsToCapturedViolators < ActiveRecord::Migration[5.0]
  def change
    add_column :captured_violators, :raw_image_orig_path, :string
    add_column :captured_violators, :license_plate_image_orig_path, :string
  end
end
