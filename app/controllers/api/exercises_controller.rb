class Api::ExercisesController < ApplicationController

  #--------------------.
  # Get user exercises |
  #--------------------'
  def index
    response_array = []

    current_student.pre_works.each do |pre_work|
      exercise = current_student.exercises.find_by_pre_work_id(pre_work.id)

      response_array << {
        pre_work_id: pre_work.id,
        learning_unit: pre_work.learning_unit,
        url: pre_work.url,
        status: exercise ? exercise.status : 'To do',
        exercise: exercise ? exercise.url : ''
      }
    end
    render :json => response_array
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
    params[:completed] = params[:completed] == 'true' || params[:completed] == 1
    exercise = current_student.exercises.where(:pre_work_id => params[:pre_work_id]).first_or_initialize
    exercise.url = params[:url]
    exercise.completed = params[:completed]
    exercise.save
    render :json => exercise.to_json
  end
end
