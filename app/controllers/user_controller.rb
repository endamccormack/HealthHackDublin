class UserController < ApplicationController

	def index
		u = User.where(["id = ?",params[:userID]])

		@m = Message.joins("INNER JOIN moods on messages.mood_id = moods.id
						    INNER JOIN users on moods.user_id = users.id").where(["
						    users.id = ?",params[:userID]])
	end

end
