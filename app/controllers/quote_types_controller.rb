class QuoteTypesController < ApplicationController

    def index 
        quoteTypes = QuoteType.all
        render json: quoteTypes, include: [:freight_quotes]
    end 

end
