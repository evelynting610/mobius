class ReviewsController < ApplicationController

	def index
    	@reviews = Review.all
  	end
	
	def show
		@review = Review.find(params[:id])
	end

	def new
	end

	def create
		@review = Review.new(review_params)
		@review.save

		vendor_name = params[:review][:vendor]
		vendor = Vendor.find_by(name: vendor_name)
		rating = params[:review][:rating].to_f
		if vendor
			num_reviews = vendor[:num_reviews] +1
			new_rating = (1.0/num_reviews*rating) + ((num_reviews-1)*vendor[:rating]/num_reviews)
			vendor.num_reviews = num_reviews
			vendor.rating = new_rating
		else
			#enter vendor info into database
			vendor = Vendor.new(:name => vendor_name, :num_reviews => 1, :rating => rating)
		end
		vendor.save

		redirect_to @review
	end

	private
		def review_params
			params.require(:review).permit(:vendor, :rating, :experiences, :improvements)
		end

end
