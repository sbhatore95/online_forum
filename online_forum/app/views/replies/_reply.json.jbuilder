json.extract! reply, :id, :comment, :question, :user, :value, :created_at, :updated_at
json.url reply_url(reply, format: :json)
