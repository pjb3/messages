class MessagesController < ApplicationController
  def show
    @messages = Message.order('created_at desc').all
  end

  def create
    Message.create(
      username: params[:username],
      message: params[:message]
    )
    redirect_to '/messages'
  end
end
