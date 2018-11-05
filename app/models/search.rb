class Search < ActiveRecord::Base

    def search_listings

        listings = Listing.all

        listings = listings.where(["title LIKE ?","%#{keywords}%"]) if keywords.present?
        listings = listings.where(["price LIKE ?","%#{price}%"]) if price.present?
        listings = listings.where(["grade LIKE ?","%#{grade}%"]) if grade.present?
        listings = listings.where(["subject LIKE ?","%#{subject}%"]) if subject.present?
        
        return listings 

    end

end

