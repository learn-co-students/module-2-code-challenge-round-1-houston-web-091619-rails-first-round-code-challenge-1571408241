class Heroine < ApplicationRecord
    belongs_to :power
    validates :power_id, uniqueness: true
end
