class Solution < ActiveRecord::Base
  has_one :symptom
  has_many :tools

  validates :body, presence: true
end
