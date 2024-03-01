class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
    @user = current_user
    teachers = User.all
    @teachers = teachers.where(role: "instructor")
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to user_messages_path, notice: "Message sent Successfull 🎉"
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def message_params
    params.require(:message).permit(:content, :sender_id, :recipient_id)
  end
end
