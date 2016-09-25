class Category < ActiveRecord::Base
  has_many :symptoms

  validates :name, presence: true
end
