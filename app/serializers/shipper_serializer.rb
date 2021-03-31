class ShipperSerializer
  include FastJsonapi::ObjectSerializer

  attributes :first_name, :last_name, :title, :department, :company, :address, :city, :state, :zip_code, :email, :phone, :website, :freight_quotes
end
