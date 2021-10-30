class Housing < ApplicationRecord
  belongs_to :city
  belongs_to :user

  validates :available_beds,
    presence: true,
    numericality: { only_integer: true, greater_than: 0}
end
