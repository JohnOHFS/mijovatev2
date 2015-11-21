class UsersController < ApplicationController
	def dashboard
		@projects = Project.all
	end
end