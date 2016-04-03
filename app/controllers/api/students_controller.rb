class Api::StudentsController < ApplicationController

  #-----------------------------------------------------------------------------.
  # Each student can retrieve the overall progress:                             |
  # Total Progress(%) = N. of completed exercises * 100 / Total N. of Exercises |
  #-----------------------------------------------------------------------------'
  def progress
    completed = current_student.exercises.where(:completed => true).count
    total     = current_student.pre_works.count

    render :json => completed * 100.0 / total
  end
end
