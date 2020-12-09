class Kitten < ApplicationRecord
  validates :name, :age, :cuteness, :softness, presence: true
  validates :name, length: { in: 2..32 }
  validates :age, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10_000 }
  validates :cuteness, :softness, numericality: { greater_than_or_equal_to: -1, less_than_or_equal_to: 11 }

  def as_json(_options = {})
    super(only: %i[name age softness cuteness])
  end
end
