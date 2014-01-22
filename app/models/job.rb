class Job < ActiveRecord::Base
  validates :title,         :presence => true
  validates :description,   :presence => true
  validates :company_name,  :presence => true
  validates :how_to_apply,  :presence => true

  def self.alive
    where('created_at > ?', 30.days.ago)
  end

  def self.approved
    where(:approved => true)
  end
end
