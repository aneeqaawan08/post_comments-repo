class UsersController < ApplicationController
    

    def show
        @user = current_user
        #  @user = User.find(params[:id])
      
    end
     
    def index
         @users = User.all
        
    end

    def active
        # @users = User.find(:all, :condition => ["status = ?", "active"])
         @users= User.where(status: "active")
        # @users = User.all.where(:status => 'active')

    end

    def inactive
        @users= User.where(status: "inactive")
    end

    def approve
        
       @user= User.find(params[:id])
          @user.update(status: "active")
          redirect_to users_path
    end
        
        
   

#    def user_posts
#        @user = User.find(params[:user_id])
#        @posts = @user.posts
   
#     #render plain: {posts: @posts.inspect, user: @user.inspect} 
#     end
   

end