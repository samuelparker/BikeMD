class Solution < ActiveRecord::Base
  belongs_to :symptom
  has_many :tools

  validates :body, presence: true
end
