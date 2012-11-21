class FeedbackMailer < ActionMailer::Base
  default from: "from@example.com"

  def feedback(feedback)
    recipients  = 'eficiofeedback@gmail.com'
    subject     = "[Feedback for Eficio] #{feedback.subject}"

    @feedback = feedback
    mail(:to => recipients, :subject => subject)
  end
end
