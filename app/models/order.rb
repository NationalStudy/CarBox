class Order < ActiveRecord::Base
  has_many :operations
  has_many :details
  belongs_to :master
  accepts_nested_attributes_for :operations,
  															reject_if: proc { |attributes| attributes['name'].blank? },
  															allow_destroy: true
	accepts_nested_attributes_for :details,
  															reject_if: proc { |attributes| attributes['nameDetail'].blank? },
  															allow_destroy: true

  validates :fullName, :numTel, :license, :carBrand, :numAuto, presence: true

  has_attached_file :image, styles: { medium: "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
