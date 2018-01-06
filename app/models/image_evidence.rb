class ImageEvidence < ApplicationRecord

  belongs_to :offense

  has_attached_file :image, :path => ":rails_root/public/TRAFFIC VIOLATIONS/:violation/:location/:capture_year/:capture_month/:capture_day/:capture_hour/:basename.:extension",
                            :url => "/TRAFFIC VIOLATIONS/:violation/:location/:capture_year/:capture_month/:capture_day/:capture_hour/:basename.:extension"

  do_not_validate_attachment_file_type :image

  Paperclip.interpolates :violation do |attachment, style|
    attachment.instance.offense.violation.name
  end

  Paperclip.interpolates :location do |attachment, style|
    attachment.instance.offense.location
  end

  Paperclip.interpolates :capture_year do |attachment, style|
    attachment.instance.capture_year
  end

  Paperclip.interpolates :capture_month do |attachment, style|
    attachment.instance.capture_month
  end

  Paperclip.interpolates :capture_day do |attachment, style|
    attachment.instance.capture_day
  end

  Paperclip.interpolates :capture_hour do |attachment, style|
    attachment.instance.capture_hour
  end

end
