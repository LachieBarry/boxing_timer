class RoundsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update]
  before_action :set_round, only: [:show, :edit, :update, :destroy]

  def index
    @workout = Workout.find(params[:workout_id])
    @rounds = Round.where(workout_id: @workout.id)
  end

  def show
  end

  def new
    @workout = Workout.find(params[:workout_id])
    @round = Round.new
  end

  def create
    @workout = Workout.find(params[:workout_id])
    @round = Round.new(round_params)
    @round.workout_id = @workout.id
    if @round.save!
      redirect_to workout_round_path(params[:workout_id], @round.id)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @round.update(round_params)
      redirect_to workout_round_path(params[:workout_id], @round.id)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @round.destroy
    redirect_to workout_rounds_path(params[:workout_id]), status: :see_other
  end

  private

  def round_params
    params.require(:round).permit(:combo, :work_time, :rest_time)
  end

  def set_workout
    @workout = Workout.find(params[:workout_id])
  end

  def set_round
    @round = Round.find(params[:id])
  end
end
