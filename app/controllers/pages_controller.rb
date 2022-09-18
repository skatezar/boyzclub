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

	def all_emails
		@mailinglist = Mailinglist.all
	end

	def new_msg
		@messages = Order.all
	end

	def old_msg
		@messages = Order.all
	end
end
