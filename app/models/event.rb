class Event < ActiveRecord::Base
  validates :title, :presence => true
  validates :email, :presence => true
  validates :starts_at, :presence => true

  def self.approved
    where(:approved => true)
  end  
end
