# class Api::ProjectsController < ApplicationController

#     def index
#         @projects = Project.all
#         render json: projects
#     end

#     def show
#         @project = selected_project
#         render :show
#     end
    
#     def create 
#         @project = Project.new(project_params)

#     end

#     def update
#         @project = selected_project
#         if @project && @project.update_attributes(project_params)
#             render :show
#         elsif !@project
#             render json: ['Could not locate project'], status: 400
#         else
#             render json: @project.errors.full_messages, status: 401
#         end
#     end

#     def destroy
#         @project = selected_project
#         if @project
#             @project.destroy
#             render :index
#         else
#             render json: ['Could not find project'], status: 400
#         end
#     end
    
#     private

#     def selected_project
#         Project.find(params[:id])
#     end

#     def project_params
#         params.require(:user).permit(:title)
#     end
# end
