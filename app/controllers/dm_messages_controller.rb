class DmMessagesController < ApplicationController
  def create
    message = DmMessage.new
    message.message = params[:message]
    message.user_id = current_user.id
    message.dm_id = params[:dm_id]
    message.save
    redirect_back fallback_location: users_path
  end
end
