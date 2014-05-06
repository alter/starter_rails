module EnsureNotReferenced extend ActiveSupport::Concern
  included do
    has_many :jobs
    before_destroy :ensure_not_referenced_by_any_jobs

    private
    def ensure_not_referenced_by_any_jobs
      if jobs.empty? then
        return true
      else
        return false
      end
    end
  end
end