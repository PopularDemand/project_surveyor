class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def destroy
  end

end
