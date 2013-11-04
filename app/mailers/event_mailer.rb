class EventMailer < ActionMailer::Base

  def notify_admins(event)
    @event = event
    mail(
      :to => "chattanoogadeveloper@gmail.com",
      :subject => "#{@event.email} submitted a new event for your approval"
    )
  end
end
