class RankingsController < ApplicationController

	def index
		@vendors = Vendor.order(rating: :desc)
	end

	def green
		@green_reviews = Review.where(:vendor => 'green')
	end

	def red
		@red_reviews = Review.where(:vendor => 'red')
	end

	def blue
		@blue_reviews = Review.where(:vendor => 'blue')
	end
end
