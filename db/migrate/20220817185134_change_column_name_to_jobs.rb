class ChangeColumnNameToJobs < ActiveRecord::Migration[7.0]
  def change
    
    rename_column :jobs, :title, :job_title

  end
end
