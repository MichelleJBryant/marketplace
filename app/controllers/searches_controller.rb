class SearchesController < ApplicationController

    def new
        @search = Search.new
        @grade = Listing.uniq.pluck(:grade)
        @subject = Listing.uniq.pluck(:subject)
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end

    def show
        @search = Search.find(params[:id])
    end


    private

    def search_params
        params.require(:search).permit(:keywords, :grade, :subject)
    end

end
