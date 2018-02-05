class UsersController < ApplicationController
  def index
    # render plain: "I'm in the index action!"
    render json: User.all
    
  end
  
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else 
      render json: user.errors.full_messages, status: :unprocessable_entity
    end 
  end
  
  def show 
    user = User.find_by(id: params[:id])
    render json: user
  end
  
  def update 
    user = User.find_by(id: params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  
  end 
  
  def destroy
    user = User.find_by(id: params[:id])
    if user
      User.delete(user)
    else
      render plain: 'user does not exist'
    end
  end
  
  private 
  
  def user_params 
    params[:user].permit(:username)
  end 
end
