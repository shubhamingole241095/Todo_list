class postcontroller < application controller

	def index
		@posts = post.all
	end
end