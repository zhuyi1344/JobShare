class RemoveExceedFromRecruitments < ActiveRecord::Migration
  def change
    remove_column :recruitments, :exceed, :boolean
  end
end
