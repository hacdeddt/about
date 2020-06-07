class HomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def send_email_contact
    params = contact_params
    ContactMailer.send_mail_contact_to_admin(params).deliver_now
    ContactMailer.send_mail_thanks_to_user(params).deliver_now
    redirect_to root_path, notice: "Cảm ơn bạn đã liên hệ với chúng tôi"
  end

  private

  def contact_params
    params.require(:contact).permit(:message, :name, :email, :subject)
  end
end
