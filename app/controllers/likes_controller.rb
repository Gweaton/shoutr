class LikesController < ApplicationController
  def create
    current_user.like(shout)
    redirect_to root_path
  end

  def shout
    @shout ||= Shout.find(params[:id])
  end

  def destroy
    current_user.unlike(shout)
    redirect_to root_path
  end
end
