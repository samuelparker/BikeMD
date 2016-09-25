class Tool < ActiveRecord::Base
  belongs_to :solution

  validates :name, presence: true
end
