class NotificationsController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    notifications = Notification.all
    render json: notifications
  end

  def show
    notification = Notification.find(params[:id])
    render json: notification
  end

  def create
    new_notification = Notification.new(notification_params)
    new_notification.save
    render json: new_notification
  end

  def update
    notification = Notification.find(params[:id])
    if notification.update(notification_params)
      render json: notification
    else
      render json: notification.errors.full_messages, status: :not_acceptable
    end
  end

  def destroy
    notification = Notification.find(params[:id])
    notification.destroy
    render json: notification
  end

  private
    def notification_params
      params.require(:notification).permit(:title, :body, :to_read)
    end
end
