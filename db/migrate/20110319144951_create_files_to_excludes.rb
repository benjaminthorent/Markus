class CreateFilesToExcludes < ActiveRecord::Migration
  def self.up
    create_table :files_to_excludes do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :files_to_excludes
  end
end
