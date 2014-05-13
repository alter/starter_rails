class AddFailReasonToJobs < ActiveRecord::Migration
  def change
        add_column :jobs, :fail_reason, :string 
  end
end
