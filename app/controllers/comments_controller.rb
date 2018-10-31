class CommentsController < ApplicationController

   def create
        @listing = Listing.find(params[:id])
        @comment = @listing.comments.create(params[:comment].permit(:body))
        redirect_to listings_path(@listing)
    end

    def destroy
        @listing = Listing.find(params[:id])
        @comment = @listing.comments.find(params[:id])
        @comment.destroy
        redirect_to listings_path(@listing)
    end


end
