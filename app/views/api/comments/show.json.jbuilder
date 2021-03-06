json.comment do
    json.extract! @comment, :id, :user_id, :project_id, :body, :username, :created_at
    
end

json.project do 
    json.extract! @comment.project, :id, :title
end

json.user do 
        json.extract! @comment.user, :id, :username
end
