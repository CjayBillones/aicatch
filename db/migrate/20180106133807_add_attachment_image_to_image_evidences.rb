class AddAttachmentImageToImageEvidences < ActiveRecord::Migration
  def self.up
    change_table :image_evidences do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :image_evidences, :image
  end
end
