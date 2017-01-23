json.extract! comment, :id, :comment, :user, :movie, :actor, :created_at, :updated_at
json.url comment_url(comment, format: :json)