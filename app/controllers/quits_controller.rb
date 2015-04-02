class QuitsController < ApplicationController
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
