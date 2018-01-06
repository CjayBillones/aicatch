class CreateImageEvidences < ActiveRecord::Migration[5.0]
  def change
    create_table :image_evidences do |t|
      t.integer :offense_id
      t.string :capture_year
      t.string :capture_month
      t.string :capture_day
      t.string :capture_hour
      t.string :capture_minute
      t.string :capture_second

      t.timestamps
    end
  end
end
