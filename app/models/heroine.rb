class Heroine < ApplicationRecord
    belongs_to :power
    
    # validates :name presence :true 
    # validates :power_id, numericality => { equal_to: 1}
end
