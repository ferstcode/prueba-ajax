class Company < ApplicationRecord
    has_many :claims, dependent: :destroy
    validates :name, presence: true
end
