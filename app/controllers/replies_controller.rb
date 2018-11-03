class RepliesController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    before_action :find_listing!
    before_action :find_comment!

    def new
        @reply = Reply.new
    end

    def create
        @reply = @comment.build_reply(reply_params)
        @reply.user = current_user
        @reply.user.avatar = current_user.avatar
        @reply.save
        redirect_to listing_path(@listing)
    end

    private
    def find_listing!
        @listing = Listing.find(params[:listing_id])
    end

    def find_comment!
        @comment = Comment.find(params[:comment_id])
    end

    def reply_params
        params.require(:reply).permit(:reply_body)
    end

end