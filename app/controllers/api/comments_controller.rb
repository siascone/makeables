class Api::CommentsController < ApplicationController

    def index 
        @comments = Comment.all
        render :index
    end

    def show
        @comment = selected_comment
        render :show
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        @comment.project_id = params[:id]

        if @comment.save
            render :show
        else
            render json: @comment.errors.full_messages, status: 422
        end
    end

    def destroy
        @comment = selected_comment
        if @comment
            @comment.destroy
            render :index
        else
            render json: ['Could not find comment'], status 400
        end
    end


    private

    def selected_comment
        Comment.find_by(project_id: params[:id])
    end

    def comment_params
        params.require(:comment).permit(:user_id, :project_id, :body)
    end
end
