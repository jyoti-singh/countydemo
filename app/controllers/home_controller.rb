class HomeController < ApplicationController
	def index
		@countytypes= Countytype.all
	end

end
