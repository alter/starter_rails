module GetAllIds extend ActiveSupport::Concern
  def self.ids
    all.collect { |record| record.id }
  end
end