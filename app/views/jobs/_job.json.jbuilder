json.extract! job, :id, :title, :company, :url, :requirment, :summmary, :responsibily, :created_at, :updated_at
json.url job_url(job, format: :json)
