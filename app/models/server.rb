class Server < ActiveRecord::Base
  include EnsureNotReferenced
  include GetAllIds
end
