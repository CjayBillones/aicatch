class AddCaptureDateBreakdownToCapturedViolator < ActiveRecord::Migration[5.0]
  def change
    add_column :captured_violators, :capture_year, :string
    add_column :captured_violators, :capture_month, :string
    add_column :captured_violators, :capture_day, :string
    add_column :captured_violators, :capture_hour, :string
  end
end
