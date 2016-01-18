class MessagesController < ApplicationController
  def create
    @message = Message.create(create_params)
    redirect_to :back
  end
  def destroy
  end

  private
  def create_params
    params.require(:message).permit(:m_text, :send_to).merge(user_id: current_user.id)
  end
end
