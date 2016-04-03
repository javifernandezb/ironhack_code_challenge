require 'test_helper'

class BootcampTest < ActiveSupport::TestCase
  test "should not save bootcamp without name" do
    bootcamp = Bootcamp.new
    assert_not bootcamp.save, "Saved the bootcamp without name"
  end

  test "should save bootcamp" do
    bootcamp = Bootcamp.new(:name => 'name1')
    assert bootcamp.save, "Saved bootcamp"
  end
end
