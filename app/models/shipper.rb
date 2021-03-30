class Shipper < ApplicationRecord

    has_many :freight_quotes
    has_many :quote_type, through, :freight_quotes

end
