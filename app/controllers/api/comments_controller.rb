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
        # debugger
        # @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        @comment = Comment.new(comment_params)
        @comment.username = current_user.username
        if @comment.save
            render :show
        else
            render json: @comment.errors.full_messages, status: 422
        end
    end

    def update
        @comment = selected_comment
        if @comment.update(comment_params)
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
            render json: ['Could not find comment'], status: 400
        end
    end


    private

    def selected_comment
        Comment.find_by(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:user_id, :project_id, :body, :username)
    end
end
