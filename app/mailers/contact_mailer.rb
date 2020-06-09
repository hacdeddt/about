class ContactMailer < ApplicationMailer
  def send_mail_contact_to_admin(params)
    @params = params
    mail(to: "hequanlysinhvienact@gmail.com", subject: @params[:subject])
  end

  def send_mail_thanks_to_user(params)
    @params = params
    mail(to: params[:email], subject: "Istart-up - Cảm ơn bạn đã liên hệ với chúng tôi")
  end
end
