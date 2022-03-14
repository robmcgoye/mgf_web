class Subtitle < ApplicationRecord
  extend Mobility
  translates :title, type: :string
  
  belongs_to :library
  
  validates :title, presence: true, length: { minimum: 1, maximum: 125 }  
  validates :link, http_url: true, allow_blank: true
  
end
