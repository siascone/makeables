json.comment do
    json.extract @comment, :id, :user_id, :project_id, :body
end

json.user do
    json.extract! @comment.user, :id, :username
end