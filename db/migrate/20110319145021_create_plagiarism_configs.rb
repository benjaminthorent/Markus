class CreatePlagiarismConfigs < ActiveRecord::Migration
  def self.up
    create_table :plagiarism_configs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :plagiarism_configs
  end
end
