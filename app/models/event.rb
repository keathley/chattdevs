class Event < ActiveRecord::Base
  validates :title, :presence => true
  validates :email, :presence => true
  validates :starts_at, :presence => true
end
