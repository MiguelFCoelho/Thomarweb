class Poi < ApplicationRecord
    belongs_to :beacon
    belongs_to :monument
end
