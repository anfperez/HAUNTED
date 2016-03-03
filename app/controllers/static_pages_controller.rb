class StaticPagesController < ApplicationController
  
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = User.feed(current_user.id).paginate(page: params[:page])
    end
    render 
  end



  def help
  end
end
