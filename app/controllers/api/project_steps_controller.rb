class Api::ProjectStepsController < ApplicationController

    def index 
        @steps = ProjectStep.all
        render :index
    end

    def show
        @step = selected_project_step
        render :show
    end

    def create
        @step = ProjectStep.new(project_step_params)
        @step.project_id = params[:project_id]
        if @step.save
            render :show
        else
            render json: ['test error message'], status: 401
        end
    end 

    def update
        @step = selected_project_step
        if @step.update(project_step_params)
            render :show
        else
            render json: @step.errors.full_messages, status: 422
        end
    end

    def destroy
        @step = selected_project_step
        if @step
            @step.destroy
            render :index
        else
            render json: ['Could not find project step'], status: 400
        end
    end

    private

    def selected_project_step
        ProjectStep.find(params[:id])
    end

    def project_step_params
        params.require(:step).permit(:heading, :body)
    end
end
