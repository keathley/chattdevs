class EventNotifier
  def initialize(event)
    @event = event
  end

  def save
    @event.save && send_email_to_admins
  end

  private

  def send_email_to_admin
    EventMailer.notify_admins(@event).deliver
  end
end
