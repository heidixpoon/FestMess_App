class ReviewsController < ApplicationController
  # skip_before_action :require_login, except: [:new, :create]

  # before_action :require_login, :only => :create
  before_action :set_review, only: [:show, :edit, :update, :destroy]


	def index
		@reviews = Review.all

	end

	def new
		@review = current_user.reviews.build

	end


  def create

    @review = current_user.reviews.build(review_params)

		# if	@review.save
		# 	render :json => @review
		# else
		# 	render :json => { :errors => @review.errors.full_messages}, :status => 422
		# end

    # @review = Review.new(review_params)
    # if @review.save
    #   respond_to do |format|
    #     format.html { redirect_to @review, :notice => "Transaction created!" }
    #     format.json { render :json => @review }
    #   end
    # else
    #   respond_to do |format|
    #     format.html { render :new }
    #     format.json { render :status => 400, :json => nil }
    #   end
    # end
  end


	def show
    @festival = festivals.find(params[:id])
		@review = @festival.reviews
	end

	def edit
		@review.update
		redirect_to root_url
	end

	def destroy
		@review.destroy
		redirect_to root_url
	end

	private

  def set_review
		@review = Review.find(params[:id])
	end

	def review_params
		params.require(:review).permit(:comment)
	end

end
