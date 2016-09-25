class Symptom < ActiveRecord::Base
  belongs_to :solution
  belongs_to :category

  validates :category, presence: true
  validates :description, presence: true
end
