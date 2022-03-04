class Page < ApplicationRecord
  extend Mobility
  translates :body, type: :text
  validates :body, presence: true
end
