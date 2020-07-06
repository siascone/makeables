json.steps do
    @steps.each do |step|
        json.set! step.id do
            json.extract! step, :id, :heading, :body, :project_id
                # if @step.step_photo.attachment == nil
                #     json.stepPhotoUrl = ''
                # else
                #     json.stepPhotoUrl url_for(@step.step_photo)
                # end
        end
    end
end