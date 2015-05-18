class Project < ActiveRecord::Base
	has_many :rewards
	has_many :pledges
	belongs_to :user
  accepts_nested_attributes_for :rewards
  after_initialize :init

	def init
      self.total_pledges ||= 0
  end
end
