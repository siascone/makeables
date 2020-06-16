json.comment do
    json.extract @comment, :id, :user_id, :project_id, :body
end

json.project do 
    json.extract! @comment.project, :id, :title
end