class QuitsController < ApplicationController
  load_and_authorize_resource

  def new
    @user = User.find params[:user_id]
    @quit = @user.quits.build
  end

  def create
    @user = User.find params[:user_id]
    @quit = @user.quits.build quit_params
    if @quit.save
      redirect_to @quit.user
    else
      render "new"
    end
  end

  def edit
    @quit = Quit.find params[:id]
  end

  def update
    @quit = Quit.find params[:id]
    if @quit.update quit_params
      redirect_to @quit.user
    else
      render "edit"
    end
  end

  private

  def quit_params
    params.require(:quit).permit(:text)
  end
end
