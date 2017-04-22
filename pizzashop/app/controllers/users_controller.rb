class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"   
      redirect_to @user
    else
      render 'new'
    end
  end

  def namecheck
    @user = User.where(name: params[:name]).take
    respond_to do |format|
      # format.json {render :json => {name_exists: @user.present?}} 
      format.json {render :json => @user}
    end
  end

  def emailcheck
    @user = User.where(email: params[:email]).take
    respond_to do |format|
      # format.json {render :json => {name_exists: @user.present?}} 
      format.json {render :json => @user}
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end