class Kitten < ApplicationRecord
  validates :name, :age, :cuteness, :softness, presence: true
end
