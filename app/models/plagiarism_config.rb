class PlagiarismConfig < ActiveRecord::Base
  belongs_to :assignment
  has_many :files_to_exclude

  validates_numericality_of :minimum_report_number, :only_integer => true,  :greater_than_or_equal_to => 0
  validates_numericality_of :minimum_similarity_value, :greater_than_or_equal_to => 0
  validates_presence_of :assignment_id	
end
