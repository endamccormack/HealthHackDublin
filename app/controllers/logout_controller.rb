class LogoutController < ApplicationController

	def index

		session[:user] = nil
		session[:clinitian] = nil

		redirect_to :controller => "index", :action => "index"

	end

end
