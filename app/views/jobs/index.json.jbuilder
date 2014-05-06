json.array!(@jobs) do |job|
  json.extract! job, :id, :territory, :jobtype, :server, :is_running, :is_finished_correctly
  json.url job_url(job, format: :json)
end
