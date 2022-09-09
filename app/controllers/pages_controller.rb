class PagesController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@disable_nav = true
	end

	def about
	end

	def confirm_msg
	end

	def confirm_mail
	end
end
