class OrderMailer < ActionMailer::Base
  default from: 'support@geekhub.com'
  def new_order
    mail(to: 'admin@geekhub.com', subject: 'New order')
  end
end
