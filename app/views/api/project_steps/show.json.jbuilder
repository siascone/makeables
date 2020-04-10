json.step do 
    json.extract! @step, :id, :heading, :body, :project_id
end

json.project do 
    json.extract! @step.project, :id, :title
end