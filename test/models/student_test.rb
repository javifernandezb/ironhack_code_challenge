require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "should not save student without bootcamp" do
    student = Student.new(:email => 'e1@ironhack.com', :password => 'aaa')
    assert_not student.save, "Saved the student without bootcamp"
  end

  test "should not save student without email" do
    student = Student.new(:bootcamp_id => 1, :password => 'aaa')
    assert_not student.save, "Saved the student without email"
  end

  test "should not save student without password" do
    student = Student.new(:email => 'e1@ironhack.com', :bootcamp_id => 1)
    assert_not student.save, "Saved the student without password"
  end

  test "should not save student if email is duplicated" do
    student = Student.create(:email => 'e1@ironhack.com', :bootcamp_id => 1, :password => 'aaa')
    student = Student.new(:email => 'e1@ironhack.com', :bootcamp_id => 1, :password => 'aaa')
    assert_not student.save, "Saved the student without duplicated email"
  end

  test "should not save student if email is wrong format" do
    student = Student.new(:email => 'e1ironhack.com', :bootcamp_id => 1, :password => 'aaa')
    assert_not student.save, "Saved the student with wrong email"
  end

  test "should save student" do
    student = Student.new(:email => 'e1@ironhack.com', :bootcamp_id => 1, :password => 'aaa')
    assert student.save, "Saved student"
  end
end
