class ServicesController < ApplicationController

	def getHistoricMoodData

		hmd = Mood.all

		json = ActiveSupport::JSON.encode(hmd)

		render :json => json

	end

	def getUsers
		u = User.all

		json = ActiveSupport::JSON.encode(u)

		render :json => json
	end

	def getClinitians
		c = Clinitian.all

		json = ActiveSupport::JSON.encode(c)

		render :json => json	
	end

	def getLastMoodForUserId
		m = Mood.where(['moods.user_id = ?', params[:UserId]]).last

		json = ActiveSupport::JSON.encode(m)

		render :json => json
	end

	def getMessagesForUserId
		m = Message.joins("INNER JOIN moods ON
							messages.mood_id = moods.id
							INNER JOIN users ON
								moods.user_id = users.id ").where(
								['users.id = ?', params[:UserId]]) 

		json = ActiveSupport::JSON.encode(m)

		render :json => json
	end

	def getMessagesForClinitianId
		cm = ClinitianMessage.joins("INNER JOIN moods ON
									clinitian_messages.mood_id = moods.id
									INNER JOIN users ON
									moods.user_id = users.id ").where(
									['users.clinitian_id = ?', params[:ClinicianId]]) 

		json = ActiveSupport::JSON.encode(cm)

		render :json => json
	end

	def getLastMessageForUserId
		m = Message.where(['moods.user_id = ?', params[:UserId]]).last

		json = ActiveSupport::JSON.encode(m)

		render :json => json
	end

	def getLastMessageForClinicianId
		cm = ClinitianMessage.joins("INNER JOIN moods ON
									clinitian_messages.mood_id = moods.id
									INNER JOIN users ON
										moods.user_id = users.id ").where(
										['users.clinitian_id = ?', params[:ClinicianId]]) 

		json = ActiveSupport::JSON.encode(cm)

		render :json => json
	end

	def getTaskForUserId
		hi = HomeworkItem.joins("INNER JOIN homeworks ON
									homework_Items.homework_id = homeworks.id ").where(
									['homeworks.user_id = ?', params[:UserId]]) 

		json = ActiveSupport::JSON.encode(hi)

		render :json => json
	end

	def getLastMessageForClinicianAndUserId
		cm = ClinitianMessage.joins("INNER JOIN moods ON
									clinitian_messages.mood_id = moods.id
									INNER JOIN users ON
									moods.user_id = users.id ").where(
									['users.clinitian_id = ?', params[:ClinicianId]]) 

		m = Message.joins("INNER JOIN moods ON
							messages.mood_id = moods.id
							INNER JOIN users ON
								moods.user_id = users.id ").where(
								['users.id = ?', params[:UserId]]) 

		both = []
		m.each do |mi|
			both << Message.new( message: mi.message, mood_id: mi.mood_id.to_s )
		end

		cm.each do |mi|
			both << Message.new(message: mi.message, mood_id: mi.mood_id.to_s)
		end

		both.sort_by{|e| e[:created_at]}
		#both = both.order("created_at")

		json = ActiveSupport::JSON.encode(both)

		render :json => json
	end

	def insertMoodForUserId
		Mood.create(message: params[:Message], mood: params[:MoodNumber], user_id: params[:UserId])
		render :json => 'sucess'
	end

	def insertMessageForUserId
		Message.create( message: params[:Message], mood_id: params[:MoodId])
		render :json => 'sucess'
	end

	def insertMessageForClinitianId
		ClinitianMessage.create( message: params[:Message], mood_id: params[:MoodId])
		render :json => 'sucess'
	end

	def insertHomework
		Homework.create(startDate: params[:Date], title: params[:Title], user_id: params[:UserId])
	end

	def insertTaskForUserId
		HomeworkItem.create(content: params[:Content], done: params[:Done], dueDate: params[:Date], homework_id: params[:HomeworkId])
	end
end
