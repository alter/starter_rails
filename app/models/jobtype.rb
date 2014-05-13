class Jobtype < ActiveRecord::Base
  include EnsureNotReferenced
  include GetAllIds
end
