class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.reference :territory
      t.reference :jobtype
      t.reference :server
      t.boolean :is_running, default: :false
      t.boolean :is_finished_correctly

      t.timestamps
    end
  end
end
