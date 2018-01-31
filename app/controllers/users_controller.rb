class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #debugger
  end

  def new
    #debugger
    @user = User.new
  end
  def create
    #ユーザーが送信したデータをまるごとUser.newに渡しているこ
    #@user = User.new(params[:user]) #セキュリティ上、危険　Railsで禁止されている記述
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
  end

  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
