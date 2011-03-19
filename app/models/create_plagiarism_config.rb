class FilesToExclude < ActiveRecord::Base
end

class PlagiarismConfig < ActiveRecord::Base
	has_many :files_to_exclude
end