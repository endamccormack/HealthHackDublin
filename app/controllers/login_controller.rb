class LoginController < ApplicationController
	def index

	end

	def authenticate
		u = User.where(["name = ?", params[:user]]).first
		c = Clinitian.where(["name = ?", params[:user]]).first

		if u != nil

			if u.password == params[:password]

				session[:user] = params[:user]
				redirect_to :controller => "dashboard", :action => "index"

			end
		
		elsif c != nil

			#if c.password == params[:password]

				session[:clinitian] = params[:user]
				redirect_to :controller => "dashboard", :action => "index"

			#end

		else

			redirect_to :controller => "login", :action => "index"
		end

	end
end
