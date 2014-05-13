class Territory < ActiveRecord::Base
  include EnsureNotReferenced
  include GetAllIds
end
