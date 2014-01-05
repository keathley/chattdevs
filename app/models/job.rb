class Job < ActiveRecord::Base
  validates :title,         :presence => true
  validates :description,   :presence => true
  validates :company_name,  :presence => true
  validates :how_to_apply,  :presence => true
end
