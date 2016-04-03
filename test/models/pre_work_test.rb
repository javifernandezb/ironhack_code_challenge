require 'test_helper'

class PreWorkTest < ActiveSupport::TestCase
  test "should not save pre_work without bootcamp" do
    pre_work = PreWork.new(:url => 'url1', :learning_unit => 'Git')
    assert_not pre_work.save, "Saved pre_work without bootcamp"
  end

  test "should not save pre_work without url" do
    pre_work = PreWork.new(:bootcamp_id => 1, :learning_unit => 'Git')
    assert_not pre_work.save, "Saved bootcamp without url"
  end

  test "should not save pre_work without learning_unit" do
    pre_work = PreWork.new(:url => 'url1', :bootcamp_id => 1)
    assert_not pre_work.save, "Saved bootcamp without learning_unit"
  end

  test "should save pre_work" do
    pre_work = PreWork.new(:url => 'url1', :bootcamp_id => 1, :learning_unit => 'Git')
    assert pre_work.save, "Saved pre_work"
  end
end
