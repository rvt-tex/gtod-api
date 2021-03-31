class FreightQuoteSerializer
  include FastJsonapi::ObjectSerializer

  attributes :first_name, :last_name, :company, :email, :phone, :description, :quote_type_id, :shipper_id 
end
