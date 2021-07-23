class SessionsController < ApplicationController
  before_action :require_login, except: [:users, :new, :create]
  # before_action :get_user, only: [:show]
  
  def show
  end
  
  def new
    render :login
  end

  def create
    if params[:name] && params[:name].size != 0
      session[:name] = params[:name]
      redirect_to user_path
    else
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
    end
    redirect_to login_path
  end

  def users
  end

  private

  def require_login
    return (redirect_to root_path) unless session.include?(:name)
  end
end
