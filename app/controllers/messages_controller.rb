class MessagesController < ApplicationController
  def show
    @messages = Message.order('created_at desc').all
  end

  def create
    Message.create(params.slice(:username, :message))
    redirect_to '/messages'
  end
end
