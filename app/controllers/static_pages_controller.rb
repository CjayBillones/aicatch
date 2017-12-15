class StaticPagesController < ApplicationController
  def live
  end

  def traffic_violations
    @base_path = 'public/images/catchall'
    @raw_images = Dir.glob(@base_path + '/raw_image/*')
    @license_plates = Dir.glob(@base_path + '/license_plate/*')
    @count = (@raw_images.count == @license_plates.count) ? @raw_images.count : nil
  end

  def reports
  end
end
