class PlagiarismController < ApplicationController

  # Displays "Manage Plagiarism Config" page for creating 
  # plagiarism configuration form
  def new
    @assignments = Assignment.find(:all)
    @plagiarism_config = PlagiarismConfig.new
  end
  
  # Displays "Manage Plagiarism Config" page for editing 
  # plagiarism configuration form
  def edit
    @assignment = Assignment.find_by_id(params[:id])
    if !request.post?
      return
    end
  
    begin
      @plagiarism_config = process_assignment_form(@plagiarism_config, params)
      rescue Exception, RuntimeError => e
        @plagiarism_config.errors.add_to_base(I18n.t("plagiarismerror", 
                                              :message => e.message))
      return
    end
    
    if @plagiarism_config.save
      flash[:success] = I18n.t("assignment.update_success")
      redirect_to :action => 'edit', :id => params[:id]
      return
    else
      render :action => 'edit'
    end
  end
 
  # Method to manage form processing
  def process_assignment_form(plagiarism_config, params)
    plagiarism_config.attributes = params[:plagiarism_config] 
    
    return plagiarism_config
  end

end