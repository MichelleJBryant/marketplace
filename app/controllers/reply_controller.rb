class ReplyController < ApplicationController
    before_action :authenticate_user!
    before_action :find_comment!


    def create
        @reply = @comment.build_reply(reply_params)
        @reply.save
    end

    private
    def find_comment!
        @comment = Comment.find(params[:comment_id])
    end

    def reply_params
        params.require(:reply).permit(:reply_body)
    end

end