require 'migration_helpers'

class CreatePlagiarismConfig < ActiveRecord::Migration
  extend MigrationHelpers
  
  def self.up
    create_table :files_to_exclude do |t|
      t.column  :file_id,              :integer 
      t.column  :file_name,            :string
      t.column  :plagiarism_config_id, :integer  
    end 
        
    create_table :plagiarism_config do |t|
      t.column  :config_id,                  :integer
      t.column  :scheduled_detection_date,   :datetime
      t.column  :exclude_java_interface,     :boolean
      t.column  :minimum_similarity_value,   :float
      t.column  :minimum_report_number,      :integer
      t.column  :assignement_id,             :integer      
    end  
     
  end

  def self.down
    drop_table :plagiarism_config
    drop_table :files_to_exclude
  end
  
end