 class Admin::ModeratorsController < Admin::ApplicationController
 	def index
 		@moderators = Moderator.all
 		
 	end

 	def edit
 		@moderator = Moderator.find(params[:id]) 		
 	end

 	def update
 		@moderator = Moderator.find(params[:id])
 		if @moderator.update(moderator_params)
 			flash[:notice] = "Moderator was successfuly updated"
 			redirect_to  admin_moderators_url
 		else
 			flash[:alert] = "Problem updating moderator"
 			render 'edit'
 		end 		
 	end

 	private

 	def moderator_params
 		params.require(:moderator).permit(:id, :fullname, :username, :password)
 		
 	end
 end