class Photo < ApplicationRecord
  extend Mobility
  translates :caption, type: :string
  mount_uploader :picture, ImagesUploader 
  belongs_to :gallery
end
