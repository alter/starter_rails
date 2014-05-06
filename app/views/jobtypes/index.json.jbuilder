json.array!(@jobtypes) do |jobtype|
  json.extract! jobtype, :id, :name
  json.url jobtype_url(jobtype, format: :json)
end
