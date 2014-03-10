class AdminMailer < ActionMailer::Base
  default from: "noreply@chattdevs.com"

  def new_job_posting(job)
    @job = job
    mail(
      :to => "spyc3r+chattdevs@gmail.com",
      :subject => "#{@job.company_name} submitted a new job posting"
    )
  end
end
