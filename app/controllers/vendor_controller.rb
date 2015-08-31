class VendorController < ApplicationController
    def index
        @vendors = Vendor.all
    end

    def new
        @vendor = Vendor.new
        @events = Array.new
        if params[:lang] == nil
            params[:lang] = 'en'
        end
        for event in Event.all
            if params[:lang].downcase == event.language
                @events << event
            end
        end
    end

    def create
        if params[:lang] == nil
            params[:lang] = 'en'
        end
        @vendor = Vendor.new(vendor_params)
        if @vendor.save
            redirect_to '/vendor-submit?lang=' << params[:lang]
        else
            render 'new'
        end
    end

    def submit
        #fill with something to show if it submitted or not
    end

    private
        def vendor_params
            params.require(:vendor).permit(
                :business_name, :owner_name, :owner_street_address, 
                :owner_city, :owner_zip, :business_home_number, 
                :cell_number, :email, :food_service_time, :facility_type, 
                :permit_types, :food_prep_start, :name_of_temp_facility, 
                :person_in_charge, :person_in_charge_cell, :covering_type, 
                :flooring_type, :wall_type, :booth_supplier, :app_sign, 
                :app_sign_date, :comm_kitch, :comm_kitch_address, 
                :comm_kitch_phone, :comm_kitch_times_used, 
                :valid_health_permit, :facility_number, 
                :facility_outside_scc, :health_permit_link, 
                :name_permit_holder, :comm_kitch_signature, 
                :comm_kitch_sign_date, null: false)
        end
end
