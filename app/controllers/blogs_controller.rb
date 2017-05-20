class BlogsController < ApplicationController
  def index
  end

  def login
    if session[:user_id] == nil
      user = User.create
      session[:user_id] = user.id
    end
    @user_id = session[:user_id]
    redirect_to new_path
  end

  def new
    if session[:user_id] == nil
      redirect_to root_path,notice:"ログインできていません"
    end
  end

 def destroy
   @user_id = session[:user_id] = nil
   redirect_to root_path
 end

end
