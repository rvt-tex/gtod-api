class FreightQuote < ApplicationRecord

    belongs_to :shipper
    belongs_to :quote_type
end
