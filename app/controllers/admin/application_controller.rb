class Admin::ApplicationController < ApplicationController
	def current_moderator
		false		
	end

	def authorize
		unless current_moderator
			redirect_to '/login', alert: 'please login to view admin pages'
			
		end
		
	end

end