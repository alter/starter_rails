class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :ip
      t.string :login
      t.string :gptlauncher_path

      t.timestamps
    end
  end
end
