class EventNotifier
  def initialize(event)
    @event = event
  end

  def save
    @event.save && send_email_to_admins
  end

  def errors
    @event.errors
  end

  private

  def send_email_to_admins
    EventMailer.notify_admins(@event).deliver
  end
end
