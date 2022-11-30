class UserMailer < ApplicationMailer
  def to_someone(sender, receiver, message)
    @sender = sender
    @receiver = receiver
    @message = message
    mail from: sender.email, to: receiver.email, subject: "Email to #{ receiver.email.split("@").first.downcase }"
  end

  def to_all_students(sender, receiver, message)
    @sender = sender
    @receiver = receiver
    @message = message
    mail from: sender.email, to: receiver.email, subject: "Email to #{ receiver.email.split("@").first.downcase }"
  end
end
