class RenameColumnForExams < ActiveRecord::Migration
  def self.up
    rename_column :exams, :localtion, :location
  end

  def self.down
    
  end
end
