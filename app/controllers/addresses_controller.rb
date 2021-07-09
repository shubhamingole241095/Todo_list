class AddressesController < ApplicationController
    #before_action :set_address , only :[:show ,:Edit ,:Destroy]
    def index 
    @addresses = Address.all
    end
    
    def new
        @addresses = Address.new
    end
    
    
    def show
    	@address = Address.find_by(id: params["id"])
    end	

    def Edit
    	@address = Address.find_by(id: params["id"])
    end	
 
    


    def create
        @address =Address.new(address_params)
        respond_to do |format|

        if @address.save
            format.html{redirect_to address_path(@address) , notice: 'Address was successfully created'}
        else
            format.html{render :new}
     
        end
    end
    end 
        private
        def address_params
            params.require(:address).permit(:address_line1, :address_line2, :country, :city, :pincode)
          
        end
    end
     
   
        def Destroy
    	@address = Address.find_by(id: params["id"])
        @address.Destroy
        respond_to do |format|
        format.html{redirect_to address_path(@address) , notice: 'Address was successfully Destroyed'}   
    end	
end
