class Monument < ApplicationRecord
    has_many :pois
    belongs_to :category, optional: true
end
