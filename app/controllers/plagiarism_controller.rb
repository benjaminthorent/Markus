class PlagiarismController < ApplicationController

  def new
    @assignment = Assignment.find_by_id(params[:id])
    @assignments = Assignment.find(:all)
  end

end