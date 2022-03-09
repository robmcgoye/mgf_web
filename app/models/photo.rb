class Photo < ApplicationRecord
  extend Mobility
  translates :caption, type: :string
  mount_uploader :picture, ImagesUploader 
  belongs_to :gallery
  validates :picture, presence: true, on: :create
  validates :caption, length: {maximum: 600}

end
