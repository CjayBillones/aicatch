class CreateImageEvidences < ActiveRecord::Migration[5.0]
  def change
    create_table :image_evidences do |t|
      
      t.timestamps
    end
  end
end
