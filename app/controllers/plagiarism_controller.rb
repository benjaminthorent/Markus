class PlagiarismController < ApplicationController

  def new
    @assignments = Assignment.find(:all)
    @plagiarism_config = PlagiarismConfig.new
  end

end