json.extract! report, :id, :desc, :user, :actor, :movie, :created_at, :updated_at
json.url report_url(report, format: :json)