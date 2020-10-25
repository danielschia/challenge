class Solicitante < ApplicationRecord
    has_many :solicitations, dependent: :destroy
end
