require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "should not save exercise without student" do
    exercise = Exercise.new(:pre_work_id => 1, :url => 'url1', :completed => 1)
    assert_not exercise.save, "Saved the pre_work without bootcamp"
  end

  test "should not save exercise without pre_work" do
    exercise = Exercise.new(:student_id => 1, :url => 'url1', :completed => 1)
    assert_not exercise.save, "Saved the exercise without pre_work"
  end

  test "should not save exercise without url" do
    exercise = Exercise.new(:student_id => 1, :pre_work_id => 1, :completed => 1)
    assert_not exercise.save, "Saved the exercise without url"
  end

  test "should not save exercise without completed" do
    exercise = Exercise.new(:student_id => 1, :pre_work_id => 1, :url => 'url1')
    assert_not exercise.save, "Saved the exercise without completed"
  end

  test "should save exercise" do
    exercise = Exercise.new(:student_id => 1, :pre_work_id => 1, :url => 'url1', :completed => 1)
    assert exercise.save, "Saved the exercise"
  end
end
