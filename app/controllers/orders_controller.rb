class OrdersController < ApplicationController
	def new
		@watch = Watch.find(params[:watch_id])
		@order = Order.new
	end 

	def create
		@order = Order.new(order_params)
		if @order.save
			redirect_to confirm_msg_path
		else
			render :new
		end
	end

	private

	def order_params
		params.require(:order).permit(:email, :phone, :message)
	end



end
