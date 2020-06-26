
    json.project do
        json.extract! @project, :id, :title, :user_id, :description
        if @project.project_photo.attachment == nil
            json.photoUrl = ''
        else
            json.photoUrl url_for(@project.project_photo)
        end
    end

    json.user do 
        json.extract! @project.user, :id, :username
    end

    # json.users do
    #     @projects.each do |project|
    #         json.set! project.user.id do
    #             json.extract! project.user, :id, :username
    #         end
    #     end
    # end



    