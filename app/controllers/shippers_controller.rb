class ShippersController < ApplicationController

    def index
        shippers = Shipper.all 
        render json: shippers, include: [:freight_quotes]
        # render json: PinSerializer.new(pins)
    end 

    def create 
        shipper = Shipper.new(shipper_params)
        if shipper.save 
            # render json: FreightQuoteSerializer.new(freight_quote)
        else 
            render json: {errors: shipper.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    def destroy 
        shipper = Shipper.find_by_id(params[:id])
        if shipper.destroy
            shippers = Shipper.all 
            render json: shippers
            # render json: FreightQuoteSerializer.new(freight_quotes)
        else
            render json: { message: "error"}  
        end 
    end 

    private

    def shipper_params
        params.require(:shipper).permit(:first_name, :last_name, :title, :department, :company, :address, :city, :state, :zip_code, :email, :phone, :website)
    end 

    def find_shipper
        @pshipper = Shipper.find_by_id(params[:id])
    end
end
