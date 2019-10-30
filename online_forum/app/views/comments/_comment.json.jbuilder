json.extract! comment, :id, :user, :question, :reply, :votes, :created_at, :updated_at
json.url comment_url(comment, format: :json)
