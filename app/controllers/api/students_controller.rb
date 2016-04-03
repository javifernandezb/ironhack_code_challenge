class Api::StudentsController < ApplicationController

  #-----------------------------------------------------------------------------.
  # Each student can retrieve the overall progress:                             |
  # Total Progress(%) = N. of completed exercises * 100 / Total N. of Exercises |
  #-----------------------------------------------------------------------------'
  def progress
    render :json => { }
  end
end
