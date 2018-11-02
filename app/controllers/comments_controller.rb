class CommentsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    before_action :find_listing!

    def index
        @comments = @listing.comments.order(created_at: :desc)
    end

    def create
        @comment = @listing.comments.new(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_to listing_path(@listing)
    end

    private
    def find_listing!
        @listing = Listing.find(params[:listing_id])
    end

    def comment_params
        params.require(:comment).permit(:body)
    end

end
