class AddApprovedToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :approved, :boolean, :default => false
  end
end
