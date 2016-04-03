class Api::ExercisesController < ApplicationController

  #--------------------.
  # Get user exercises |
  #--------------------'
  def index
    student = check_auth
    render :json => student.exercises.to_json
  end

  #-------------------------------------------------------------------------.
  # Once a student completes an exercise, he/she submits to the API the URL |
  # of the GitHub repository where the exercise was uploaded: in that very  |
  # moment the exercise is marked as “done”                                 |
  #                                                                         |
  # For each student, the states of an exercise can be:                     |
  #    · To do                                                              |
  #    · In progress                                                        |
  #    · Done                                                               |
  #-------------------------------------------------------------------------'
  def update
    render :json => { }
  end
end
