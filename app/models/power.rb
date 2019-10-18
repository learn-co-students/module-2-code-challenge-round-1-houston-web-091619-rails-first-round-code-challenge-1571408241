class Power < ApplicationRecord
    has_many :heroines

    # validate :name, presence :true
    # validate :name, uniqueness :true
end
