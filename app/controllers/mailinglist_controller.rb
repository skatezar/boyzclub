class MailinglistController < ApplicationController
	before_action :authenticate_user!
	def index
		@mailinglist = Mailinglist.all
	end

	def new
		@mail = Mailinglist.new
	end 

	def create
		@mail = Mailinglist.new(mail_params)
		if @mail.save
			redirect_to confirm_mail_path
		else
			render :new
		end
	end

	private

	def mail_params
    	params.require(:mailinglist).permit(:mail)
  	end

end
