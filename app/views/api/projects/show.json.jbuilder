
    json.project do
        json.extract! @project, :id, :title, :user_id
        if @project.project_photo
            json.photoUrl url_for(@project.project_photo)
        else
            json.photoUrl ""
        end
    end

    json.user do 
        json.extract! @project.user, :id, :username
    end

    