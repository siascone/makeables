    json.project do
        json.extract! @project, :id, :title, :user_id, :description
    end

    json.user do 
        json.extract! @project.user, :id, :username
    end