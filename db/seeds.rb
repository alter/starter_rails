# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Clean all tables
Job.delete_all
Territory.delete_all
Jobtype.delete_all
Server.delete_all

Server.create!(name: 'm100',
  ip: '192.168.198.66',
  login: 'a1',
  gptlauncher_path: '/home/a1/GPT_Launcher'
)

Server.create!(name: 'Bart',
               ip: '195.211.130.227',
               login: 'a1',
               gptlauncher_path: '/home/allods/GPT_launcher/'
)

Server.create!(name: 'Lisa',
               ip: '195.211.130.227',
               login: 'a1',
               gptlauncher_path: '/home/allods/GPT_launcher/'
)

Jobtype.create!(name: 'test')
Jobtype.create!(name: 'full_deploy')
Jobtype.create!(name: 'restart_shard')
Jobtype.create!(name: 'download_version')

Territory.create!(name: 'AllodsOnline_en')
Territory.create!(name: 'Giant')
Territory.create!(name: 'MENA')
Territory.create!(name: 'LevelUp_Brazil')