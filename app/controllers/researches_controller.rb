class ResearchesController < ApplicationController

  def new
  	@research = Research.new
  end

  # Will show a single research information
  def show
  	@research = Research.find(params[:id])
  end

  def create
  	@research = Research.new(params[:research])
  	if @research.save
  		#Handle a successful save
  		flash[:success] = "Successfully create a research!"
  		redirect_to @research
  	else
  		render 'new'
  	end
  end

end
