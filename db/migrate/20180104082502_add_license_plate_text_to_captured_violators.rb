class AddLicensePlateTextToCapturedViolators < ActiveRecord::Migration[5.0]
  def change
    add_column :captured_violators, :license_plate_text, :string
  end
end
