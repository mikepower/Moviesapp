class PostsController < ApplicationController
	before_filter :authorise
	def create
		@movie = Movie.find params[:movie_id]
		if @movie
			@post = @movie.posts.create params[:post]
			@post.user_id = @current_user.id		#sets the user_id FK
			@post.save								#saves the @post
		end
		
		respond_to do |format|
			format.html{redirect_to @movie}
		end
	end
end
