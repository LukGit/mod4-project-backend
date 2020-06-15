class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, include: [:notes] 
  end

  def create
    user = User.find_or_create_by!(name: params[:name])
    render json: user, include: [:notes] 
    # render json: UserSerializer.new(user)
  end

end
