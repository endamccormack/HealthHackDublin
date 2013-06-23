class DashboardController < ApplicationController
	
	def index

		if session[:user] == nil && session[:clinitian] == nil

			redirect_to :controller => "login", :action => "index"

		elsif session[:clinitian] != nil

			c = Clinitian.where(['name = ?',session[:clinitian]]).first

			@cp = User.where(["clinitian_id = ?",c.id])

		else
			u = User.where(['name = ?',session[:user]]).first

			@hi = HomeworkItem.joins("INNER JOIN homeworks ON
									  homework_Items.homework_id = homeworks.id ").where(
									  ['homeworks.user_id = ?', u.id]) 

			@cm = ClinitianMessage.joins("INNER JOIN moods ON
									clinitian_messages.mood_id = moods.id
									INNER JOIN users ON
										moods.user_id = users.id ").where(
										['users.clinitian_id = ?', u.clinitian_id]).last

		end
	end

	def insertMood
		
		u = User.where(['name = ?',session[:user]]).first

		Mood.create( message: params[:message] , mood: params[:moodRating], user_id: u.id)

		redirect_to :controller => "dashboard"

	end
end
