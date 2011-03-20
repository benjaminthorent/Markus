class PlagiarismResultsController < ApplicationController

  def new
    @assignment = Assignment.find_by_id(params[:id])
  end
  
end