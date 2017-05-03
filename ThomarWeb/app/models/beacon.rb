class Beacon < ApplicationRecord

    validates :uuid, presence: {message: "O campo uuid não pode ser vazio"}

    has_many :accesses
end
