class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render :index
  end
end
