
    json.project do
        json.extract! @project, :id, :title, :description, :user_id
        json.photoUrl url_for(@project.project_photo)
    end
    json.user do 
        json.extract! @project.user, :id, :username
    end
