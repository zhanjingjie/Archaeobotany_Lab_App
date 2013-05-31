class ResearchesController < ApplicationController
  def new
  end

  # Will show a single research information
  def show
  	@research = Research.find(params[:id])
  end
end
