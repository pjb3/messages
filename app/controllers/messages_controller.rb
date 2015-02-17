class MessagesController < ApplicationController
  def show
    @messages = Message.order('created_at desc').all
    @message = Message.new
  end

  def create
    @message = Message.new(
      username: params[:username],
      message: params[:message]
    )
    if @message.save
      redirect_to '/messages'
    else
      render 'show'
    end
  end
end
