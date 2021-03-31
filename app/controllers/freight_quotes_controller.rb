class FreightQuotesController < ApplicationController

    def index
        freight_quotes = FreightQuote.all 
        render json: freight_quotes
        # render json: PinSerializer.new(pins)
    end 

    def create 
        freight_quote = FreightQuote.new(freight_quote_params)
        if freight_quote.save 
            # render json: FreightQuoteSerializer.new(freight_quote)
        else 
            render json: {errors: freight_quote.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    def destroy 
        freight_quote = FreightQuote.find_by_id(params[:id])
        if freight_quote.destroy
            freight_quotes = FreightQuote.all 
            render json: freight_quotes
            # render json: FreightQuoteSerializer.new(freight_quotes)
        else
            render json: { message: "error"}  
        end 
    end 

    private

    def freight_quote_params
        params.require(:freight_quote).permit(:first_name, :last_name, :company, :email, :phone, :description, :quote_type_id, :shipper_id)
    end 

    def find_freight_quote
        @pfreight_quote = FreightQuote.find_by_id(params[:id])
    end
end
