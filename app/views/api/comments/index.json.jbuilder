json.comments do
    @comments.each do |comment|
        json.set! comment.id do
            json.extract! comment, :id, :user_id, :project_id, :body, :username
        end
    end
end

# json.users do 
#     @comments.each do |comment|
#         json.set! comment.user.id do
#             json.extract! comment.user, :id, :username
#         end
#     end
# end