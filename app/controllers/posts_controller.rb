class PostsController < ApplicationController

def new
end

def create
  @post = Post.new(post_params)
 
  if @post.save
     redirect_to @post
  else
     render 'new'
  end 
end

def index
  @post = Post.all
end

def edit
  @post = Post.find(params[:id])
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to post_path
#  render 'index'
end

def update
  @post = Post.find(params[:id])
	
	if @post.update(params[:post].permit(:Title, :Comment))
	   redirect_to @post
	else
	   render 'edit'
	end
end

private
  def post_params
    params.require(:post).permit(:Title, :Comment)
  end

def show
#  @post = Post.find(params[:id])
render text: params[:post].inspect
end

end
