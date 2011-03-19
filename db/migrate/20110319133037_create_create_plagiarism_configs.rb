class CreateCreatePlagiarismConfigs < ActiveRecord::Migration
  def self.up
    create_table :create_plagiarism_configs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :create_plagiarism_configs
  end
end
