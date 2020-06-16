json.comments do
    @comments.each do |comment|
        json.set! comment.id do
            json.extract! comment, :id, :user_id, :project_id, :body
        end
    end
end