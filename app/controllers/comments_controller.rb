class CommentsController < ApplicationController

# before_action :set_user
# before_action :set_post

def new
    @comment = Comment.new
end

def create
    @post = Post.find (params[:post_id])
    @comment = @post.comments.new(comment_params)
    
    @comment.post_id = @post.id
    @comment.user_id = current_user.id
    if @comment.save
        respond_to do |format|
            format.js  { render :layout => false }
          end
    else
        flash[:error] = "error"
        respond_to do |format|
            format.js  { render :layout => false }
          end
    end


    
end

def destroy
    @comment= Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = 'comment successfully deleted'
    redirect_to post_path(@post)
end




def comment_params
    params.require(:comment).permit(:content, :name,:user_id, :post_id, :rating)
end

end

