class HomeController < ApplicationController

    def index
        # @users = User.all
        @posts = Post.all
    end

    # def show
    #     @post = Post.find(params[:id]) 
    #     @comment = Comment.new
       
    
    # end


end
