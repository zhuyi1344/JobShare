class Exam < ActiveRecord::Base
  validates :company, presence: true, uniqueness: true
end
