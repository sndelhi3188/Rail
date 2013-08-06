class PostsController < ApplicationController

def new
end

def create
	#render text: params[:post].inspect
	@post = POST.new(post_params)
	@post.save
	redirect_to @post
end

#private 
#def
#	params.require(:post).permit(:Title, :Comment)
#end

end
