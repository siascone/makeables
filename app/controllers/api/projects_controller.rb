class Api::ProjectsController < ApplicationController

    def index
        @projects = Project.all
        render :index
    end

    def show
        @project = selected_project
        render :show
    end
    
    def create
        debugger
        @project = Project.new(project_params)
        @project.user_id = current_user.id
        if @project.save
            render :show
        else
            render json: @project.errors.full_messages, status: 422
        end
    end

    # def edit
    #     @project = selected_project
    #     render :edit
    # end
    # def create 
    #     @project = Project.new(project_params)
    #     @project.user_id = current_user.id
    #     if params[:project][:project_photo]
    #         if @project.save
    #             render :show
    #         else
    #             render json: @project.errors.full_messages, status: 401
    #         end
    #     else
    #         render json: ["Please Include a Photo"], status: 401
    #     end
    # end

    def update
        @project = selected_project
        if @project.update(project_params)
            render :show
        else
            render json: @project.errors.full_messages, status: 422
        end
    end

    def destroy
        @project = selected_project
        if @project
            @project.destroy
            render :index
        else
            render json: ['Could not find project'], status: 400
        end
    end
    
    private

    def selected_project
        Project.find(params[:id])
    end

    def project_params
        params.require(:project).permit(:title, :description, :project_photo)
    end
end
