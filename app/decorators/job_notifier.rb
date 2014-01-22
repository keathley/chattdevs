class JobNotifier
  def initialize(job)
    @job = job
  end

  def save
    @job.save && send_email_to_admins
  end

  def errors
    @job.errors
  end

  private

  def send_email_to_admins
    AdminMailer.new_job_posting(@job).deliver
  end
end