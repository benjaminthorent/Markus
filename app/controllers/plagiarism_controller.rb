# Controller for plagiarism configuration

class PlagiarismController < ApplicationController

  def new
    @assignment = Assignment.find(params[:id])
    @plagiarism_config = PlagiarismConfig.new
  end



end
