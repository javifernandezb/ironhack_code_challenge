require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "should not save exercise without student" do
    pre_work = PreWork.first
    exercise = Exercise.new(:pre_work_id => pre_work.id, :url => 'url1')
    assert_not exercise.save, "Saved the pre_work without bootcamp"
  end

  test "should not save exercise without pre_work" do
    student = Student.first
    exercise = Exercise.new(:student_id => student.id, :url => 'url1')
    assert_not exercise.save, "Saved the exercise without pre_work"
  end

  test "should not save exercise without url" do
    pre_work = PreWork.first
    student = Student.first
    exercise = Exercise.new(:student_id => student.id, :pre_work_id => pre_work.id)
    assert_not exercise.save, "Saved the exercise without url"
  end

  test "should save exercise" do
    pre_work = PreWork.first
    student = Student.first
    exercise = Exercise.new(:student_id => student.id, :pre_work_id => pre_work.id, :url => 'url1')
    assert exercise.save, "Saved the exercise"
  end
end
