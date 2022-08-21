class PricetalkController < ApplicationController
	def index
		@pricetalks = Pricetalk.all
	end

	def show
		@pricetalk = Pricetalk.find(params[:id])
	end

	def new
		@pricetalk = Pricetalk.new
	end

	def create
		@pricetalk = Pricetalk.new(pricetalk_params)
		if @pricetalk.save
			redirect_to pricetalk_path(@pricetalk)
		else
			render :new
		end
	end

	def edit
		@pricetalk = Pricetalk.find(params[:id])
	end

	def update
		@pricetalk = Pricetalk.find(params[:id])
		@pricetalk.udpate(pricetalk_params)
		if @pricetalk.save
			redirect_to pricetalk_path(@pricetalk)
		else
			render :new
		end
	end

	def destroy
		@pricetalk = Pricetalk.find(params[:id])
    	@pricetalk.destroy
    	redirect_to pricetalk_index_path
	end

	private

	def pricetalk_params
		params.require(:pricetalk).permit(:title, :link1, :link2, :link3, 
			:price_prediction, :para1, :para2, :para3, :photo1, :photo2)
	end
end
