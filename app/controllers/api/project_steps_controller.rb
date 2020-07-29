class Api::ProjectStepsController < ApplicationController

    def index 
        @steps = ProjectStep.all
        render :index
    end

    def show
        @step = selected_step
        render :show
    end

    def create
        @step = ProjectStep.new(step_params)
        if @step.save
            render :show
        else
            render json: ['test error message'], status: 401
        end
    end 

    def update
        @step = selected_step
        if @step.update(step_params)
            
            render :show
        else
            render json: @step.errors.full_messages, status: 422
        end
    end

    def destroy
        @step = selected_step
        if @step
            @step.destroy
            render :show
        else
            render json: ['Could not find project step'], status: 400
        end
    end

    private

    def selected_step
        ProjectStep.find(params[:id])
    end

    def step_params
        params.require(:step).permit(:heading, :body, :project_id)
    end
end
