class Account < ApplicationRecord
  belongs_to :user

  validates :gender, inclusion: { in: %w(male female N/A), message: "Gender can only be 'male', 'female', or 'N/A'" }
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 20, less_than_or_equal_to: 100 }
end
