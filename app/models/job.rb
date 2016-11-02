class Job < ActiveRecord::Base
  has_many :job_applications
  belongs_to :employer
  belongs_to :student
  belongs_to :job
end
