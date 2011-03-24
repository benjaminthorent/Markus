require 'migration_helpers'

class CreatePlagiarismConfigs < ActiveRecord::Migration
  extend MigrationHelpers
  
  def self.up
    create_table :files_to_excludes do |t|
      t.column  :file_id,              :integer 
      t.column  :file_name,            :string
      t.column  :plagiarism_config_id, :integer  
    end 
        
    create_table :plagiarism_configs do |t|
      t.column  :config_id,                  :integer
      t.column  :scheduled_detection_date,   :datetime
      t.column  :exclude_java_interface,     :boolean, :default => True
      t.column  :minimum_similarity_value,   :float,   :default => 5
      t.column  :minimum_report_number,      :integer, :default => 15	
      t.column  :assignment_id,             :integer      
    end  
     
  end

  def self.down
    drop_table :plagiarism_configs
    drop_table :files_to_excludes
  end
  
end