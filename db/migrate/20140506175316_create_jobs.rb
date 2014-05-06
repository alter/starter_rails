class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.belongs_to :territory
      t.belongs_to :jobtype
      t.belongs_to :server
      t.boolean :is_running, default: :false
      t.boolean :is_finished_correctly

      t.timestamps
    end
  end
end
