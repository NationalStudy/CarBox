class Master < ActiveRecord::Base
  has_many :orders

  validates :nameMaster, :telNum, :master, :addressMaster, presence: true
end
