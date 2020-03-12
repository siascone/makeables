json.array! @projects do |project|
    json.extract! project, :id, :title, :user_id
    json.photoUrl url_for(project.project_photo)
    json.user do
        json.extract! project.user, :id, :username
    end
end