require 'test_helper'

class LocationTest < ActiveSupport::TestCase

  def setup
    @location = Location.new(name: "Camera 1")
  end

  test "should be valid" do
    assert @location.valid?
  end

  test "name should be unique" do
    duplicate_location = @location.dup
    duplicate_location.name = @location.name.upcase
    @location.save
    assert_not duplicate_location.valid?
  end

end
