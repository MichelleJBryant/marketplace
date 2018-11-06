class Search < ApplicationRecord
    def listings
        @listings ||= find_listings
    end

    private

    def find_listings
        listings = Listing.order(:title)
        listings = listings.where("title like ?", "%#{keywords}%") if keywords.present?
        listings = listings.where(grade: grade) if grade.present?
        listings = listings.where(subject: subject) if subject.present?
        listings = listings.where("price >= ?", min_price) if min_price.present?
        listings = listings.where("price <= ?", max_price) if max_price.present?
        listings
    end


end
