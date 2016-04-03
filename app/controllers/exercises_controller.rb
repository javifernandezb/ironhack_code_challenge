class ExercisesController < ApplicationController
  def index
    @pre_works = current_student.pre_works
  end
end
