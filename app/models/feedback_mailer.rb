class FeedbackMailer < ActionMailer::Base
  default from: "from@example.com"

  def feedback(feedback)
    recipients  = 'wctej89@gmail.com'
    subject     = "[Feedback for YourSite] #{feedback.subject}"

    @feedback = feedback
    mail(:to => recipients, :subject => subject)
  end
end
