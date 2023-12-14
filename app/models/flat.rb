class Flat < ApplicationRecord
  has_many :comments, dependent: :destroy
end
