class Monument < ApplicationRecord
    validates :name, presence: {message: "O campo nome não pode ser vazio"},
                     length: {minimum: 4, :message => "O campo nome tem de ter no minimo 4 caracteres"}

    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    has_many :pois
    belongs_to :category, optional: true
end
