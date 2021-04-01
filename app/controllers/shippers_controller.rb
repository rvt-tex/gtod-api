class ShippersController < ApplicationController

    def index
        shippers = Shipper.all 
        render json: ShipperSerializer.new(shippers)
    end 

    def show 
        @shipper = Shipper.find_by_id(params[:id])
        render json: @shipper
    end 
    
    def create 
        shipper = Shipper.new(shipper_params)
        if shipper.save 
            render json: ShipperSerializer.new(shipper)
        else 
            render json: {errors: shipper.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    def destroy 
        shipper = Shipper.find_by_id(params[:id])
        if shipper.destroy
            shippers = Shipper.all 
            render json: shippers
            render json: ShipperSerializer.new(shippers)
        else
            render json: { message: "error"}  
        end 
    end 

    private

    def shipper_params
        params.require(:shipper).permit(:first_name, :last_name, :title, :department, :company, :address, :city, :state, :zip_code, :email, :phone, :website)
    end 

    def find_shipper
        @shipper = Shipper.find_by_id(params[:id])
    end
end
