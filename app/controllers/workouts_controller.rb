class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render :index
  end

  def create
    @workout = Workout.create(
      user_id: params[:user_id],
      date: params[:date],
      workout_type: params[:workout_type],
      duration: params[:duration],
    )
    render :show
  end

end
