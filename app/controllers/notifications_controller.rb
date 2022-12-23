class NotificationsController < ApplicationController
  def index
    notifications = Notification.all
    render json: notifications
  end

  def show
    notification = Notification.find(params[:id])
  end

  def create
    new_notification = Notification.new(notification_params)
    new_notification.save
    render json: new_notification
  end

  def destroy
    notification = Notification.find(params[:id])
    notification.destroy
    render json: notification
  end

  private
    def notification_params
      params.require(:notification).permit(:title, :body)
    end
end
