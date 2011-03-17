module PlagiarismHelper

	
	def add_file_to_exclude_link(name, form)
    	link_to_function name do |page|
      	file_to_exclude = render(:partial => 'file_to_exclude', :locals => {:form => form, :file_to_exclude => AssignmentFile.new})
      	page << %{
        var new_file_to_exclude_id = "new_" + new Date().getTime();
        $('files_to_exclude').insert({bottom: "#{ escape_javascript file_to_exclude }".replace(/(attributes_\\d+|\[\\d+\])/g, new_file_to_exclude_id) });
        }
    	end
  	end

end