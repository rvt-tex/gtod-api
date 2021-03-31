class QuoteType < ApplicationRecord

    has_many :freight_quotes
    has_many :shippers, through: :freight_quotes
end
