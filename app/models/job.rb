class Job < ActiveRecord::Base
  belongs_to :territory
  belongs_to :jobtype
  belongs_to :server
end
