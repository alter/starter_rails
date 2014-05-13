class Job < ActiveRecord::Base
  belongs_to :territory
  belongs_to :jobtype
  belongs_to :server

  validates :territory_id, :jobtype_id, :server_id, :version, presence: true
  validates :version, format: { with: /[0-9]\.[0-9]\.[0-9]{2}\.[0-9]{1,3}(\.[0-9]{1,3})?/, message: "Version number have to contains from numbers and '.' only !"}
  validates :territory_id, inclusion: Territory.ids
  validates :jobtype_id, inclusion: Jobtype.ids
  validates :server_id, inclusion: Server.ids
end