json.array! @projects do |project|
    json.extract! project, :id, :title, :description, :user_id
    json.photoUrl url_for(project.project_photo)
end