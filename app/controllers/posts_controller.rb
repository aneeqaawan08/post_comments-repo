class PostsController < ApplicationController
before_action :authenticate_user!
def new
    @post = Post.new
end

def create
    
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save!
        flash[notice]= 'post successfully created'
        redirect_to post_path(@post)
    else
        render new
    end

end

def show
    @post = Post.find(params[:id]) 
    @comment = Comment.new

end


def index
    # @posts = Post.all
    # @count_of_posts = @posts.count
    # @comments = comment.all
    if current_user.admin?
        @posts = Post.all
        
    else
        @posts = current_user.posts.all
        
    end
end

def edit
    @post = Post.find(params[:id])
end


def update

        @post = Post.find(params[:id])
        if @post.update(post_params)
            flash[:notice] = "post is successfully updated"
            redirect_to post_path(@post)
        else
            render 'edit'
        end
end

def destroy
    @post= Post.find(params[:id])
    @post.destroy
    flash[:notice] = 'post successfully deleted'
    redirect_to posts_path(@index)
end

def approve
    
    @post= Post.find(params[:id])
       @post.update(status: "active")
       redirect_to root_path
 end


private

def post_params
    params.require(:post).permit [:title,:content,:image, :user_id, :status]
end
















end
