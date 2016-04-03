class Api::StudentsController < ApplicationController

  #-----------------------------------------------------------------------------.
  # Each student can retrieve the overall progress:                             |
  # Total Progress(%) = N. of completed exercises * 100 / Total N. of Exercises |
  #-----------------------------------------------------------------------------'
  def progress
    completed = @student.exercises.where(:completed => true).count
    puts "===> completed: #{completed}"
    total     = @student.pre_works.count
    puts "===> total: #{total}"

    render :json => completed * 100.0 / total
  end
end
