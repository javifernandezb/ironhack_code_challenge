class Api::ExercisesController < ApplicationController

  #--------------------.
  # Get user exercises |
  #--------------------'
  def index
    render :json => @student.pre_works.to_json
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
  def create
    exercise = @student.exercises.where(:pre_work_id => params[:pre_work_id]).first_or_create
    exercise.update_attributes({:url => params[:url], :completed => params[:completed]})
    render :json => exercise.to_json
  end
end
