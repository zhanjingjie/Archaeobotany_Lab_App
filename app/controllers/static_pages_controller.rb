class StaticPagesController < ApplicationController
  def home
  end

  def research
    @research = Research.find(1)
  end

  def resource
  end

  def people
  end

  def contact
  end
end
