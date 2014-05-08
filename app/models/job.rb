class Job < ActiveRecord::Base
  belongs_to :territory
  belongs_to :jobtype
  belongs_to :server
=begin
  TERRITORIES = Territory.all.to_a
  SERVERS = Server.all.to_a
  JOBTYPES = Jobtype.all_to_a
=end
  validates :territory_id, :jobtype_id, :server_id, :version, presence: true
  validates :version, format: { with: /[0-9]\.[0-9]\.[0-9]{2}\.[0-9]{1,3}(\.[0-9]{1,3})?/, message: "Version number have to contains from numbers and '.' only !"}
#  validates :pay_type, inclusion: PAYMENT_TYPES
  validates
end
