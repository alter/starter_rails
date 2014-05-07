class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :territory
      t.references :jobtype
      t.references :server
      t.boolean :is_running, default: :false
      t.boolean :is_finished_correctly

      t.timestamps
    end
  end
end
