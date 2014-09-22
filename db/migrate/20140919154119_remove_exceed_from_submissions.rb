class RemoveExceedFromSubmissions < ActiveRecord::Migration
  def change
    remove_column :submissions, :exceed, :boolean
  end
end
