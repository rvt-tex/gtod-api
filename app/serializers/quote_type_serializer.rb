class QuoteTypeSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :name, :shipper
end
