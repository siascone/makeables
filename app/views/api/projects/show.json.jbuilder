
    json.extract! @project, :id, :title, :description
    json.photoUrl url_for(@project.project_photo)
