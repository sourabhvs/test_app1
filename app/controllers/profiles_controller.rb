class ProfilesController < ApplicationController

	def index


	end

	def new
			@profile= Profile.new

	end
	def create
		@profile = Profile.new(:firstname=>params[:profile][:firstname], :lastname=>params[:profile][:lastname], :designation=>params[:profile][:designation], :origin=>params[:profile][:origin])
		@profile.save
		redirect_to profile_path(@profile)
	end
	def show

		@profile=Profile.find(params[:id])
	end
end
