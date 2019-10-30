json.extract! question, :id, :user, :value, :comments, :votes, :created_at, :updated_at
json.url question_url(question, format: :json)
