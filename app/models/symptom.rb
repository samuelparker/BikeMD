class Symptom < ActiveRecord::Base
  belongs_to :solution

  validates :category, presence: true
  validates :description, presence: true
end
