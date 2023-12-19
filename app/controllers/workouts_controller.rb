class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.all
  end

  def show
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save!
      redirect_to workout_path(@workout.id)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to workout_path(@workout.id)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @workout.destroy
    redirect_to workouts_path, status: :see_other
  end

  private

  def workout_params
    params.require(:workout).permit(:name)
  end

  def set_workout
    @workout = Workout.find(params[:id])
  end
end
