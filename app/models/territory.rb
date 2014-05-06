class Territory < ActiveRecord::Base
  include EnsureNotReferenced
end
