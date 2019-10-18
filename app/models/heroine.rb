class Heroine < ApplicationRecord
    belongs_to :power

    # validate :name, presence :true
    # validate :name, uniqueness :true
    # validate :super_name, uniqueness :true
end
