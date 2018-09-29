class ExperimentsController < ApplicationController
  def index
    @experiments = Experiment.all
  end

  def new
    @experiment = Experiment.new()
  end

  def create
    @experiment = Experiment.new(experiment_params)
    @experiment.requester = current_user

    if @experiment.save
      redirect_to experiments_path
    else
      raise 'errors'
    end
  end

  private

  def experiment_params
    params.require(:experiment).permit(:id, :name, :description)
  end
end
