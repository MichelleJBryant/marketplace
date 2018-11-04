class RepliesController < ApplicationController
    before_action :authenticate_user!
    before_action :find_listing!
    before_action :find_comment!


    def create
        @reply = @comment.build_reply(reply_params)
        @reply.save
        redirect_to listing_path(@listing)
    end

    private
    def find_listing!
        @listing = Listing.find(params[:listing_id])
    end

    def find_comment!
        @comment = @listing.comments.find(params[:id])
    end

    def reply_params
        params.require(:reply).permit(:reply_body)
    end

end