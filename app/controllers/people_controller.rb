class PeopleController < ApplicationController
	def index
	@peoples = People.all
end
end
