class PlagiarismController < ApplicationController

  def index
    @assignment = Assignment.find_by_id(params[:id])
  end

end
