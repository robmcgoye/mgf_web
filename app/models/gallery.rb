class Gallery < ApplicationRecord
  extend Mobility
  translates :title, type: :string
  validates :title, presence: true
  mount_uploader :thumbnail, ImagesUploader 
  has_many :photos
  accepts_nested_attributes_for :photos, 
              allow_destroy: true,
              reject_if:  lambda { |a| a['picture'].blank? }

end
